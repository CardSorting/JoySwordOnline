from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location(
    "deploy_excludes", ROOT / "scripts" / "deploy_excludes.py"
)
assert SPEC and SPEC.loader
deploy_excludes = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(deploy_excludes)


class DeployExcludesTests(unittest.TestCase):
    def test_server_pid_file_is_runtime_artifact(self) -> None:
        path = "Elsword/offline/server-pids.json"
        self.assertTrue(deploy_excludes.is_runtime_artifact(path))
        self.assertTrue(deploy_excludes.should_exclude_from_deploy(path))

    def test_enhancement_runtime_receipts_are_not_baked_into_deployments(self) -> None:
        for name in ("enhancement-validation.json", "enhancement-canary.json"):
            path = f"Elsword/offline/{name}"
            self.assertTrue(deploy_excludes.is_runtime_artifact(path))
            self.assertTrue(deploy_excludes.should_exclude_from_deploy(path))


if __name__ == "__main__":
    unittest.main()
