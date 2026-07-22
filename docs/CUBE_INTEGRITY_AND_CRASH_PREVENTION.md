# Cube System Integrity & Crash Prevention Playbook

This document details the architecture, state contract invariants, validation rules, packaging pipeline, and troubleshooting procedures for the JoySword item cube and random reward system (`RandomItem.lua`, `PackageItemData.lua`, and shop definitions).

---

## 1. Overview & Architecture

Item cubes and packages in Elsword grant players items either deterministically (scalar packages) or dynamically (gacha / random drop pools). Data is synchronized across client and server:

* **Server Data Files**:
  * `Elsword/GameServer/RandomItem.lua`: Defines random item groups (`AddRandomItemGroup`) and probability pools.
  * `Elsword/GameServer/PackageItemData.lua`: Defines structured item packages and nested container items.
* **Client KOM Data**:
  * Both `RandomItem.lua` and `PackageItemData.lua` are packaged into `client/data/data036.kom`.
  * The client loader reads these files natively; any checksum drift, malformed mapping, unrouted nested package, or missing ID will cause the game client or GameServer to crash when opening cubes or accessing shops.

---

## 2. Implemented Crash Prevention Invariants & Contract Enforcement

The integrity validator script `scripts/cube-integrity.py` hardens `validate_state_contract` (`scripts/cube-integrity.py:725`) to strictly reject malformed data constructs before runtime:

### Core Data Invariants

1. **Rejection of Null Groups & Invalid Reward Keys**:
   * Item groups with `group_id <= 0` or missing group IDs are rejected.
   * *Exception*: Scalar cubes (`group_id == 0`) with valid, positive native scalar reward IDs are explicitly preserved.

2. **Validation of Reward Keys & Weight Parameters**:
   * Every reward entry must reference an existing item ID in the item table (`item_type != IT_NONE`).
   * Drop weights must be strictly positive (`weight > 0`), and quantity/period non-negative.

3. **Prevention of Unrouted & Recursive Packages**:
   * Nested package structures are resolved and checked for cycles.
   * Recursive package loops (Package A containing Package B containing Package A) are repaired or pruned.
   * Unrouted package rewards without valid fallback pools or routing paths (e.g. legacy/invalid route-less package items `224380`, `250000640`, `250000650`) are pruned (19 route-less package rewards removed).

4. **Shop Definition Sanitization**:
   * Unrouted or mislabeled items in NPC shops (e.g. Echo and Ariel modern shops) are automatically purged to prevent players from buying items that cause inventory/opening crashes.

5. **Client-Server Data Drift Prevention**:
   * Both `RandomItem.lua` and `PackageItemData.lua` are updated synchronously on server runtime and repacked into `client/data/data036.kom`.

---

## 3. Client Data Packaging & Read-Back Verification Pipeline

Client `.kom` archive generation uses `scripts/kom-patcher.py`. To prevent client crash bugs from truncated or corrupted `.kom` archives:

1. **Compression & Checksum Verification**:
   * Lua files are compressed using zlib (level 9).
   * File entries in `data036.kom` are stored with CRC32/Adler32 XML metadata checksums.

2. **Byte-for-Byte Readback Verification**:
   * After writing `data036.kom`, `kom-patcher.py` performs a byte-for-byte readback verification (`verify_kom_entries`) to confirm that extracted archive bytes match the source payload byte-for-byte.

3. **Regression Test Coverage**:
   * `tests/test_cube_integrity.py` includes explicit regression coverage (`test_packed_client_readback_detects_payload_corruption` at `tests/test_cube_integrity.py:93`) ensuring payload mismatch or bit-flip corruption immediately raises a `RuntimeError`.

---

## 4. Verification & Audit Results

The cube integrity system undergoes continuous validation:

* **Item Metrics**: 49,539 items, 4,378 routes, 8,178 groups, 546 packages validated.
* **Idempotence**: A second repair pass removes 0 entries, confirming idempotence.
* **Test Suite**: Passed 11/11 focused cube tests and 69/69 full test suite cases.

---

## 5. Maintenance & Operational Procedures

### Running Validation and Repair

To run the cube integrity check and apply automatic repairs manually:

```powershell
python scripts\cube-integrity.py --repair
```

To run the test suite to ensure no regression was introduced:

```powershell
python -m unittest tests\test_cube_integrity.py
```

### Loading Repaired Data

After executing a cube repair or rebuilding `.kom` packages, **you MUST restart the server stack and relaunch the client**:

1. Stop the offline server stack:
   ```powershell
   python scripts\stop-offline.py
   ```
2. Start the offline server stack (automatically verifies cube integrity preflight):
   ```powershell
   python scripts\start-offline.py
   ```
3. Relaunch the Elsword game client so `data036.kom` is loaded into client memory.
