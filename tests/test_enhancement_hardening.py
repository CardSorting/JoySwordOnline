from __future__ import annotations

import hashlib
import importlib.util
import json
import math
import re
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
CANONICAL = ROOT / "Elsword" / "ServerResource" / "EnchantTable.lua"
MANIFEST = ROOT / "config" / "enhancement-invariants.json"
FIXTURES = ROOT / "tests" / "fixtures" / "enhancement"


def load_module(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Unable to load {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


validator = load_module(
    "enhancement_hardening_validator", ROOT / "scripts" / "validate-enhancement-probabilities.py"
)


def standard_line(text: str, target: int) -> str:
    match = re.search(
        rf"(?m)^EnchantItemManager:SetEnchantProbability\(\s*{target}\s*,.*$", text
    )
    if not match:
        raise AssertionError(f"missing standard fixture row {target}")
    return match.group(0)


def replace_standard_line(text: str, target: int, replacement: str) -> str:
    return re.sub(
        rf"(?m)^EnchantItemManager:SetEnchantProbability\(\s*{target}\s*,.*$",
        replacement,
        text,
        count=1,
    )


def manifest_for(text: str, destination: Path) -> Path:
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    section = validator.probability_section(text)
    manifest["approved_probability_section_sha256"] = hashlib.sha256(
        section.encode("utf-8")
    ).hexdigest()
    manifest["allow_legacy_divergence"] = True
    destination.write_text(json.dumps(manifest), encoding="utf-8")
    return destination


class DeterministicProbabilityTests(unittest.TestCase):
    def test_exact_cumulative_boundaries_have_no_gaps_or_overlap(self) -> None:
        for mode in validator.METHODS:
            for row in validator.parse_rows(CANONICAL, mode).values():
                cumulative = 0.0
                reachable: set[str] = set()
                for outcome in validator.OUTCOMES:
                    probability = row.probabilities[outcome]
                    upper = cumulative + probability
                    if probability > 0.0:
                        midpoint = cumulative + probability / 2.0
                        self.assertEqual(validator.choose_outcome(row, midpoint), outcome)
                        self.assertEqual(
                            validator.choose_outcome(row, math.nextafter(upper, -math.inf)),
                            outcome,
                        )
                        reachable.add(outcome)
                        if cumulative > 0.0:
                            self.assertEqual(validator.choose_outcome(row, cumulative), outcome)
                    cumulative = upper
                self.assertTrue(math.isclose(cumulative, 100.0, rel_tol=0.0, abs_tol=1e-9))
                self.assertEqual(
                    validator.choose_outcome(row, math.nextafter(100.0, 0.0)),
                    next(name for name in reversed(validator.OUTCOMES) if row.probabilities[name] > 0),
                )
                self.assertEqual(
                    reachable,
                    {name for name in validator.OUTCOMES if row.probabilities[name] > 0},
                )

    def test_success_threshold_and_progression_transition(self) -> None:
        row = validator.parse_rows(CANONICAL, "standard")[10]
        below = math.nextafter(row.success_probability, -math.inf)
        self.assertEqual(validator.resolve_attempt(row, 9, below)[0:2], ("Up1", 10))
        self.assertEqual(validator.resolve_attempt(row, 9, row.success_probability)[0], "NoChange")
        with self.assertRaisesRegex(ValueError, "does not equal current level"):
            validator.resolve_attempt(row, 8, 0.0)


class InvariantFixtureTests(unittest.TestCase):
    def test_approved_fixture_identifies_current_canonical(self) -> None:
        fixture = json.loads((FIXTURES / "legacy-approved.json").read_text(encoding="utf-8"))
        self.assertEqual(validator.section_sha256(CANONICAL), fixture["probability_section_sha256"])
        for mode, count in fixture["row_counts"].items():
            self.assertEqual(len(validator.parse_rows(CANONICAL, mode)), count)

    def mutate(self, text: str, case: dict) -> str:
        operation = case["mutation"]
        target = case.get("target")
        if operation == "remove_standard_row":
            return replace_standard_line(text, target, "")
        if operation == "duplicate_standard_row":
            return text + "\n" + standard_line(text, target) + "\n"
        if operation == "set_field":
            line = standard_line(text, target)
            changed = re.sub(
                rf"({case['field']}\s*=\s*)[^,}}]+", rf"\g<1>{case['value']}", line, count=1
            )
            return replace_standard_line(text, target, changed)
        if operation == "renumber_standard_row":
            line = standard_line(text, target)
            changed = re.sub(r"(SetEnchantProbability\(\s*)\d+", rf"\g<1>{case['value']}", line)
            return replace_standard_line(text, target, changed)
        if operation == "copy_standard_row_to_range":
            source = standard_line(text, case["source"])
            for level in range(case["start"], case["end"] + 1):
                copied = re.sub(r"(SetEnchantProbability\(\s*)\d+", rf"\g<1>{level}", source)
                text = replace_standard_line(text, level, copied)
            return text
        raise AssertionError(operation)

    def assert_rejected(self, text: str, expected_reason: str) -> None:
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory)
            table = folder / "EnchantTable.lua"
            table.write_text(text, encoding="utf-8")
            manifest = manifest_for(text, folder / "manifest.json")
            with self.assertRaisesRegex(ValueError, expected_reason):
                validator.validate_invariants(table, None, manifest)

    def test_every_declared_corruption_is_rejected_for_its_reason(self) -> None:
        canonical = CANONICAL.read_text(encoding="utf-8-sig")
        fixture = json.loads((FIXTURES / "mutation-cases.json").read_text(encoding="utf-8"))
        for case in fixture["cases"]:
            with self.subTest(case=case["name"]):
                self.assert_rejected(self.mutate(canonical, case), case["reason"])

    def test_exact_guaranteed_high_tier_override_is_permanently_rejected(self) -> None:
        canonical = CANONICAL.read_text(encoding="utf-8-sig")
        broken = (FIXTURES / "broken-high-tier-override.lua").read_text(encoding="utf-8")
        active_rows = "\n".join(line for line in broken.splitlines() if line.startswith("EnchantItemManager"))
        for level in range(11, 21):
            canonical = replace_standard_line(
                canonical,
                level,
                next(line for line in active_rows.splitlines() if re.search(rf"\(\s*{level}\s*,", line)),
            )
        self.assert_rejected(canonical, "guaranteed Up1 = 100")


class CanonicalGenerationTests(unittest.TestCase):
    def test_runtime_copy_is_generated_and_drift_fails_check(self) -> None:
        sync = load_module(
            "enhancement_sync_fixture", ROOT / "scripts" / "sync-enhancement-table.py"
        )
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "canonical.lua").write_bytes(b"approved")
            (root / "runtime.lua").write_bytes(b"drift")
            manifest = {
                "schema": "joysword.enhancement-invariants/v1",
                "canonical_source": "canonical.lua",
                "generated_runtime_copies": ["runtime.lua"],
            }
            path = root / "manifest.json"
            path.write_text(json.dumps(manifest), encoding="utf-8")
            old_root, old_manifest = sync.ROOT, sync.MANIFEST
            try:
                sync.ROOT, sync.MANIFEST = root, path
                self.assertEqual(sync.synchronize(apply=False), ["runtime.lua"])
                self.assertEqual(sync.synchronize(apply=True), ["runtime.lua"])
                self.assertEqual(sync.synchronize(apply=False), [])
                self.assertEqual((root / "runtime.lua").read_bytes(), b"approved")
            finally:
                sync.ROOT, sync.MANIFEST = old_root, old_manifest


class OperationalSafeguardTests(unittest.TestCase):
    def test_build_release_and_startup_all_gate_on_enhancement_validation(self) -> None:
        overlay = (ROOT / "scripts" / "build-code-overlay.py").read_text(encoding="utf-8")
        release = (ROOT / "scripts" / "azure_release.py").read_text(encoding="utf-8")
        startup = (ROOT / "scripts" / "start-offline.py").read_text(encoding="utf-8")
        self.assertIn('"sync-enhancement-table.py"', overlay)
        self.assertIn('"--check"', overlay)
        self.assertIn('"validate-enhancement-probabilities.py"', overlay)
        self.assertIn('"--check-only"', overlay)
        self.assertIn('"enhancement_validation": "pass"', release)
        self.assertIn("enhancement_probability_section_sha256", release)
        self.assertIn("enhancement-runtime-canary.py", startup)
        self.assertIn("changed after validation", startup)


if __name__ == "__main__":
    unittest.main()
