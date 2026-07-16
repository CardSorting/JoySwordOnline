import re
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
dirs = [
    ROOT / "Elsword" / "Resources",
    ROOT / "Elsword" / "ClientScript" / "Major",
    ROOT / "Elsword" / "_ClientScript" / "Major",
]

encodings = ["utf-8-sig", "cp949", "utf-16", "utf-8"]

# Mappings of the sets to search (English name, regex query, Korean terms)
SET_SEARCH_TERMS = {
    "Dragon Knight": (r"dragon knight|드래곤 나이트", ["Dragon Knight", "드래곤 나이트"]),
    "Holy Unicorn": (r"holy unicorn|홀리 유니콘", ["Holy Unicorn", "홀리 유니콘"]),
    "Shadow": (r"\bshadow\b|\bdark shadow\b|\bgrace shadow\b|섀도우|다크 섀도우|그레이스 섀도우", ["Shadow", "섀도우", "다크 섀도우"]),
    "Salvatore Ebalon": (r"salvatore ebalon|ebalon|살바토르 에발론|살바토르 에발롱", ["Ebalon", "에발론", "에발롱"]),
    "Gold Falcon": (r"gold falcon|golden falcon|골드 팔콘|골드팔콘", ["Gold Falcon", "Falcon", "골드 팔콘"]),
    "Nasod Battle Suit MK2": (r"nasod battle suit|battle suit mk|나소드 배틀 슈트|나소드 배틀슈트", ["Nasod Battle", "배틀 슈트", "배틀슈트"]),
    "Salvatore Ventus": (r"salvatore ventus|ventus|살바토르 벤투스|벤투스", ["Ventus", "벤투스"]),
    "Ignition Caligo": (r"ignition caligo|caligo|이그니션 칼리고|칼리고", ["Caligo", "이그니션", "칼리고"]),
    "Evil Tracer 2": (r"evil tracer 2|evil tracer ii|이블 트레이서 2|이블 트레이서 ii", ["Evil Tracer 2", "트레이서 2", "트레이서 ii"]),
    "Hamel Navy Officer": (r"hamel navy|navy officer|하멜 해군|해군 장교", ["Hamel Navy", "해군 장교"]),
    "Thanatos": (r"thanatos|타나토스", ["Thanatos", "타나토스"]),
    "Miracle Alchemist": (r"miracle alchemist|alchemist|미라클 알케미스트|알케미스트", ["Alchemist", "알케미스트"]),
    "Millennium Fox": (r"millennium fox|천년여우", ["Millennium Fox", "천년여우"]),
    "Salvatore Gaia": (r"salvatore gaia|gaia|살바토르 가이아|가이아", ["Gaia", "가이아"]),
    "Velder Academy Knights": (r"velder academy|academy knight|벨더 학원 기사단|학원 기사단", ["Academy Knight", "학원 기사단"]),
    "Masquerade": (r"masquerade|가면무도회|마스커레이드", ["Masquerade", "가면무도회", "마스커레이드"]),
    "Henir - Lord of Time and Space": (r"henir|lord of time|지배자|헤니르", ["Henir", "헤니르", "시공의 지배자"]),
    "Perkisas - Guise of Greed": (r"perkisas|페르키사스|탐욕의 화신", ["Perkisas", "페르키사스"]),
    "Archpriest - Leader of Light": (r"archpriest|아크프리스트|빛의 인도자", ["Archpriest", "아크프리스트"]),
    "Celestial Master": (r"celestial master|세레스티얼 마스터|세레스티얼마스터", ["Celestial Master", "세레스티얼"]),
    "Salvatore Rosso": (r"salvatore rosso|rosso|살바토르 로쏘|로쏘", ["Rosso", "로쏘"]),
    "Elpheus": (r"elpheus|엘페우스", ["Elpheus", "엘페우스"]),
    "Evil Tracer 3": (r"evil tracer 3|evil tracer iii|이블 트레이서 3|이블 트레이서 iii", ["Evil Tracer 3", "트레이서 3", "트레이서 iii"]),
}

def search_files():
    results = []
    
    # Precompile regular expressions
    patterns = {name: re.compile(regex, re.IGNORECASE) for name, (regex, _) in SET_SEARCH_TERMS.items()}
    
    print("Starting search across item files...")
    for d in dirs:
        if not d.exists():
            continue
        # Search all lua files matching Item*.lua or Enum.lua
        for p in d.rglob("*.lua"):
            if "Item" not in p.name and "Enum" not in p.name:
                continue
                
            content = None
            for enc in encodings:
                try:
                    content = p.read_text(encoding=enc)
                    break
                except Exception:
                    continue
            if not content:
                try:
                    content = p.read_text(encoding="utf-8", errors="replace")
                except Exception:
                    continue
            
            lines = content.splitlines()
            for line_no, line in enumerate(lines, 1):
                for name, pattern in patterns.items():
                    if pattern.search(line):
                        # Try to backtrack to find m_ItemID or constant definition
                        item_id = "unknown"
                        for check_no in range(max(0, line_no - 15), min(len(lines), line_no + 5)):
                            id_match = re.search(r"m_ItemID\s*=\s*(\d+)", lines[check_no])
                            if id_match:
                                item_id = id_match.group(1)
                                break
                            enum_match = re.search(r"([A-Z0-9_]+)\s*=\s*(\d+)", lines[check_no])
                            if enum_match and item_id == "unknown":
                                item_id = f"{enum_match.group(1)}={enum_match.group(2)}"
                        
                        results.append(f"Set: {name} | File: {p.relative_to(ROOT)} | Line: {line_no} | ID/Key: {item_id} | Context: {line.strip()}")

    output_file = ROOT / "scratch" / "ib_search_results.txt"
    output_file.write_text("\n".join(results), encoding="utf-8")
    print(f"Search complete. Found {len(results)} matches. Written to scratch/ib_search_results.txt")

if __name__ == "__main__":
    search_files()
