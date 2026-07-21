import re
import json
import sys
from pathlib import Path
from collections import defaultdict

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
ELSWORD = ROOT / "Elsword"

def read_text(p):
    if not p.exists():
        return ""
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="ignore")

print("=== DEBUG CUBE MAPPINGS & FILE LOCATION AUDIT ===")

# 1. Check locations of AddCubePackageData.lua across the workspace
add_cube_files = [
    ELSWORD / "Resources" / "AddCubePackageData.lua",
    ELSWORD / "ClientScript" / "Major" / "AddCubePackageData.lua",
    ELSWORD / "_ClientScript" / "Major" / "AddCubePackageData.lua",
    ELSWORD / "ServerResource" / "AddCubePackageData.lua",
    ELSWORD / "GameServer" / "AddCubePackageData.lua",
]
for p in add_cube_files:
    print(f"File {p.relative_to(ELSWORD)} exists: {p.exists()} (size: {p.stat().st_size if p.exists() else 0} bytes)")

# 2. Check PackageItemData.lua locations
pkg_files = [
    ELSWORD / "Resources" / "PackageItemData.lua",
    ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua",
    ELSWORD / "_ClientScript" / "Major" / "PackageItemData.lua",
    ELSWORD / "ServerResource" / "PackageItemData.lua",
    ELSWORD / "GameServer" / "PackageItemData.lua",
]
for p in pkg_files:
    print(f"File {p.relative_to(ELSWORD)} exists: {p.exists()} (size: {p.stat().st_size if p.exists() else 0} bytes)")

# 3. Check RandomItemMapping.lua locations
mapping_files = [
    ELSWORD / "Resources" / "RandomItemMapping.lua",
    ELSWORD / "ClientScript" / "Major" / "RandomItemMapping.lua",
    ELSWORD / "ServerResource" / "RandomItemMapping.lua",
    ELSWORD / "GameServer" / "RandomItemMapping.lua",
]
for p in mapping_files:
    print(f"File {p.relative_to(ELSWORD)} exists: {p.exists()} (size: {p.stat().st_size if p.exists() else 0} bytes)")

# 4. Check RandomItemData.lua locations
random_data_files = [
    ELSWORD / "Resources" / "RandomItemData.lua",
    ELSWORD / "ClientScript" / "Major" / "RandomItemData.lua",
    ELSWORD / "ServerResource" / "RandomItemData.lua",
    ELSWORD / "GameServer" / "RandomItemData.lua",
]
for p in random_data_files:
    print(f"File {p.relative_to(ELSWORD)} exists: {p.exists()} (size: {p.stat().st_size if p.exists() else 0} bytes)")

# 5. Parse PackageItemData mappings
pkg_mappings = defaultdict(list)
for p in pkg_files:
    if not p.exists():
        continue
    for m in re.finditer(r"AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)", read_text(p)):
        pkg_mappings[int(m.group(1))].append(int(m.group(2)))

print(f"\nUnique packages mapped in PackageItemData.lua: {len(pkg_mappings)}")

# 6. Parse AddCubePackageData mappings
cube_pkg_mappings = defaultdict(list)
for p in add_cube_files:
    if not p.exists():
        continue
    for m in re.finditer(r"AddCubePackageData\(\s*(\d+)\s*,\s*(\d+)", read_text(p)):
        cube_pkg_mappings[int(m.group(1))].append(int(m.group(2)))

print(f"Unique cubes mapped in AddCubePackageData.lua: {len(cube_pkg_mappings)}")

# 7. Parse RandomItemMapping.lua mappings
# AddRandomItemMappingData( mapping_id, cube_item_id, key_item_id, random_id1, random_id2... )
random_mappings = {}
for p in mapping_files:
    if not p.exists():
        continue
    for line in read_text(p).splitlines():
        m = re.search(r"AddRandomItemMappingData\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,?\s*(.*)\)", line)
        if m:
            map_id = int(m.group(1))
            cube_id = int(m.group(2))
            key_id = int(m.group(3))
            r_ids = [int(x.strip()) for x in m.group(4).split(",") if x.strip().isdigit()]
            random_mappings[cube_id] = {
                "map_id": map_id,
                "key_id": key_id,
                "random_ids": r_ids
            }

print(f"Unique cubes mapped in RandomItemMapping.lua: {len(random_mappings)}")

# 8. Check sync between GameServer, ServerResource, ClientScript, and Resources
print("\n=== FILE CONTENT SYNC AUDIT ===")
for name in ["PackageItemData.lua", "RandomItemData.lua", "RandomItemMapping.lua"]:
    cs_p = ELSWORD / "ClientScript" / "Major" / name
    res_p = ELSWORD / "Resources" / name
    sr_p = ELSWORD / "ServerResource" / name
    gs_p = ELSWORD / "GameServer" / name
    
    cs_len = len(read_text(cs_p)) if cs_p.exists() else 0
    res_len = len(read_text(res_p)) if res_p.exists() else 0
    sr_len = len(read_text(sr_p)) if sr_p.exists() else 0
    gs_len = len(read_text(gs_p)) if gs_p.exists() else 0
    
    print(f"{name:25s} -> ClientScript:{cs_len} | Resources:{res_len} | ServerResource:{sr_len} | GameServer:{gs_len}")

