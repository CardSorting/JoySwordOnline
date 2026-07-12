#!/usr/bin/env python3
"""Operate the Terraform-managed JoySword Azure deployment (web + edge)."""

from __future__ import annotations

import argparse
import getpass
import json
import os
import re
import shutil
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TERRAFORM_DIR = ROOT / "infra" / "azure"


class CommandError(RuntimeError):
    pass


def require_command(name: str) -> str:
    command = shutil.which(name)
    if not command:
        raise CommandError(f"Required command is not installed or not on PATH: {name}")
    return command


def prepare_command(command: list[str], *, platform: str | None = None) -> list[str]:
    """Make Windows batch command shims executable by subprocess."""
    platform = os.name if platform is None else platform
    executable = shutil.which(command[0])
    if platform == "nt" and executable and Path(executable).suffix.lower() in {".bat", ".cmd"}:
        if Path(executable).name.lower() == "az.cmd":
            azure_python = Path(executable).parent.parent / "python.exe"
            if azure_python.is_file():
                return [str(azure_python), "-IBm", "azure.cli", *command[1:]]
        return [os.environ.get("COMSPEC", "cmd.exe"), "/d", "/c", executable, *command[1:]]
    return command


def run(
    command: list[str],
    *,
    cwd: Path = ROOT,
    capture: bool = False,
    input_text: str | None = None,
    check: bool = True,
) -> subprocess.CompletedProcess[str]:
    print("+", " ".join(command))
    result = subprocess.run(
        prepare_command(command),
        cwd=cwd,
        text=True,
        input=input_text,
        capture_output=capture,
        check=False,
    )
    if check and result.returncode != 0:
        if capture:
            print(result.stdout, file=sys.stderr)
            print(result.stderr, file=sys.stderr)
        raise CommandError(f"Command failed with exit code {result.returncode}: {' '.join(command)}")
    return result


def load_tfvars(path: Path) -> dict[str, str]:
    if not path.is_file():
        raise CommandError(f"Missing Azure tfvars file: {path}")
    values: dict[str, str] = {}
    for match in re.finditer(r'(?m)^\s*([A-Za-z0-9_]+)\s*=\s*"([^"]*)"', path.read_text(encoding="utf-8")):
        values[match.group(1)] = match.group(2)
    return values


def state_names(subscription_id: str) -> tuple[str, str, str]:
    import hashlib
    suffix = hashlib.sha256(subscription_id.encode("ascii")).hexdigest()[:10]
    return "joysword-tfstate-rg", f"jstf{suffix}", "tfstate"


def ensure_state_backend(config: dict[str, str]) -> tuple[str, str, str]:
    subscription = config["subscription_id"]
    location = config.get("location", "centralus")
    group, account, container = state_names(subscription)
    run(["az", "account", "set", "--subscription", subscription])
    run(["az", "group", "create", "--name", group, "--location", location, "--output", "none"])
    exists = run(
        ["az", "storage", "account", "show", "--name", account, "--resource-group", group],
        capture=True,
        check=False,
    )
    if exists.returncode != 0:
        run(
            [
                "az", "storage", "account", "create",
                "--name", account,
                "--resource-group", group,
                "--location", location,
                "--sku", "Standard_LRS",
                "--kind", "StorageV2",
                "--min-tls-version", "TLS1_2",
                "--allow-blob-public-access", "false",
                "--allow-shared-key-access", "false",
                "--output", "none",
            ]
        )
    account_id = run(
        [
            "az", "storage", "account", "show",
            "--name", account,
            "--resource-group", group,
            "--query", "id",
            "--output", "tsv",
        ],
        capture=True,
    ).stdout.strip()
    run(
        [
            "az", "role", "assignment", "create",
            "--assignee-object-id", config["operator_object_id"],
            "--assignee-principal-type", "User",
            "--role", "Storage Blob Data Contributor",
            "--scope", account_id,
            "--output", "none",
        ],
        check=False,
    )
    for attempt in range(12):
        created = run(
            [
                "az", "storage", "container", "create",
                "--account-name", account,
                "--name", container,
                "--auth-mode", "login",
                "--output", "none",
            ],
            check=False,
        )
        if created.returncode == 0:
            break
        if attempt == 11:
            raise CommandError("State-container access did not propagate after two minutes.")
        time.sleep(10)
    return group, account, container


def terraform_init(config: dict[str, str]) -> None:
    require_command("terraform")
    # Bypass slow Azure CLI state checks and re-init if Terraform backend is already initialized
    init_sentinel = TERRAFORM_DIR / ".terraform" / "terraform.tfstate"
    if init_sentinel.is_file():
        return
    group, account, container = ensure_state_backend(config)
    run(
        [
            "terraform", "init", "-input=false", "-reconfigure",
            f"-backend-config=resource_group_name={group}",
            f"-backend-config=storage_account_name={account}",
            f"-backend-config=container_name={container}",
            "-backend-config=key=joysword-production.tfstate",
            "-backend-config=use_azuread_auth=true",
            f"-backend-config=subscription_id={config['subscription_id']}",
            f"-backend-config=tenant_id={config['tenant_id']}",
        ],
        cwd=TERRAFORM_DIR,
    )


def terraform_args(args: argparse.Namespace) -> list[str]:
    return [f"-var-file={args.var_file.resolve()}"]


def terraform_output(name: str) -> object:
    result = run(["terraform", "output", "-json", name], cwd=TERRAFORM_DIR, capture=True)
    return json.loads(result.stdout)


def cmd_plan(args: argparse.Namespace) -> None:
    config = load_tfvars(args.var_file)
    terraform_init(config)
    run(["terraform", "plan", "-input=false", *terraform_args(args)], cwd=TERRAFORM_DIR)


def cmd_infra(args: argparse.Namespace) -> None:
    """Apply the web + supporting infrastructure (App Service, Postgres, Key Vault, storage)."""
    config = load_tfvars(args.var_file)
    terraform_init(config)
    command = ["terraform", "apply", "-input=false", *terraform_args(args)]
    if args.foundation:
        # Bootstrap the minimum set needed before the full apply.
        command += [
            "-target=azurerm_resource_group.joysword",
            "-target=azurerm_virtual_network.joysword",
            "-target=azurerm_storage_account.artifacts",
            "-target=azurerm_storage_container.releases",
            "-target=azurerm_storage_container.downloads",
            "-target=azurerm_role_assignment.operator_artifact_writer",
            "-target=azurerm_key_vault.joysword",
            "-target=azurerm_role_assignment.operator_secret_officer",
        ]
    if args.auto_approve:
        command.append("-auto-approve")
    run(command, cwd=TERRAFORM_DIR)


def cmd_secrets(args: argparse.Namespace) -> None:
    config = load_tfvars(args.var_file)
    db_password = getpass.getpass("New SQL sa password: ")
    admin_password = getpass.getpass("New in-game admin password: ")
    if len(db_password) < 16 or "'" in db_password:
        raise CommandError("SQL password must be at least 16 characters and cannot contain a single quote.")
    if not 8 <= len(admin_password) <= 20:
        raise CommandError("Legacy admin password must be 8-20 characters.")
    for name, value in (("db-password", db_password), ("admin-password", admin_password)):
        run(
            [
                "az", "keyvault", "secret", "set",
                "--vault-name", config["key_vault_name"],
                "--name", name,
                "--value", value,
                "--output", "none",
            ]
        )
    print("Azure Key Vault secrets configured.")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--var-file",
        type=Path,
        default=TERRAFORM_DIR / "terraform.tfvars",
        help="Azure Terraform variables file",
    )
    subparsers = parser.add_subparsers(dest="command", required=True)

    subparsers.add_parser("plan").set_defaults(func=cmd_plan)
    infra = subparsers.add_parser("infra")
    infra.add_argument("--foundation", action="store_true")
    infra.add_argument("--auto-approve", action="store_true")
    infra.set_defaults(func=cmd_infra)
    subparsers.add_parser("secrets").set_defaults(func=cmd_secrets)

    args = parser.parse_args()
    try:
        require_command("az")
        args.func(args)
    except (CommandError, OSError, KeyError, json.JSONDecodeError) as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
