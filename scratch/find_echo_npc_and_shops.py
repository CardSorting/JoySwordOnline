import re
import sys
from pathlib import Path

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

print("=== FIND ECHO NPC & NPC SHOP TABLES ===")

# 1. Search NPCTemplet.lua for Echo / 에코
npc_files = [
    ELSWORD / "ClientScript" / "Major" / "NPCTemplet.lua",
    ELSWORD / "_ClientScript" / "Major" / "NPCTemplet.lua",
    ELSWORD / "Resources" / "NPCTemplet.lua",
]

echo_npcs = []
for nf in npc_files:
    if not nf.exists():
        continue
    content = read_text(nf)
    blocks = content.split("AddNPCTemplet")
    for b in blocks[1:]:
        m_id = re.search(r"m_iNPCID\s*=\s*(\d+)", b[:400]) or re.search(r"^\(\s*(\d+)", b[:100])
        m_name = re.search(r'm_strName\s*=\s*KStringRes\(\s*"([^"]+)"', b[:400]) or re.search(r'm_strName\s*=\s*"([^"]+)"', b[:400])
        if m_id and m_name:
            nid = int(m_id.group(1))
            name = m_name.group(1)
            if any(k in name.lower() for k in ["echo", "eko", "에코"]):
                echo_npcs.append((nid, name, nf.relative_to(ELSWORD)))

print(f"Found Echo NPCs: {echo_npcs}")

# 2. Inspect NPCShopTable.lua
shop_files = [
    ELSWORD / "ClientScript" / "Major" / "NPCShopTable.lua",
    ELSWORD / "_ClientScript" / "Major" / "NPCShopTable.lua",
    ELSWORD / "Resources" / "NPCShopTable.lua",
    ELSWORD / "ServerResource" / "NPCShopTable.lua",
    ELSWORD / "GameServer" / "NPCShopTable.lua",
]

for sf in shop_files:
    if sf.exists():
        print(f"\nExisting NPCShopTable file: {sf.relative_to(ELSWORD)}")
        text = read_text(sf)
        lines = [l for l in text.splitlines() if l.strip() and not l.strip().startswith("--")]
        for l in lines[:20]:
            print("  ", l[:140])
