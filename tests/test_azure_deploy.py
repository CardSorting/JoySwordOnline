from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path
from unittest import mock


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("azure_deploy", ROOT / "scripts" / "azure_deploy.py")
assert SPEC and SPEC.loader
azure_deploy = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(azure_deploy)


class AzureDeployCommandTests(unittest.TestCase):
    def test_azure_cli_uses_bundled_python_to_preserve_arguments(self) -> None:
        shim = r"C:\Program Files\Microsoft SDKs\Azure\CLI2\wbin\az.cmd"
        bundled_python = Path(shim).parent.parent / "python.exe"
        with (
            mock.patch.object(azure_deploy.shutil, "which", return_value=shim),
            mock.patch.object(azure_deploy.Path, "is_file", return_value=True),
        ):
            prepared = azure_deploy.prepare_command(
                ["az", "vm", "run-command", "invoke", "--scripts", "& C:\\script.ps1; exit 0"],
                platform="nt",
            )

        self.assertEqual(
            prepared,
            [
                str(bundled_python),
                "-IBm",
                "azure.cli",
                "vm",
                "run-command",
                "invoke",
                "--scripts",
                "& C:\\script.ps1; exit 0",
            ],
        )

    def test_native_executable_is_unchanged(self) -> None:
        executable = r"C:\Tools\terraform.exe"
        with mock.patch.object(azure_deploy.shutil, "which", return_value=executable):
            prepared = azure_deploy.prepare_command(["terraform", "version"], platform="nt")

        self.assertEqual(prepared, ["terraform", "version"])


if __name__ == "__main__":
    unittest.main()
