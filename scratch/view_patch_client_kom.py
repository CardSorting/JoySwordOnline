from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
PATCH_SCRIPT = ROOT / "scripts" / "patch-client-kom.py"

def main():
    if PATCH_SCRIPT.exists():
        text = PATCH_SCRIPT.read_text(encoding="utf-8", errors="replace")
        
        # Let's search for "data034.kom"
        matches = [m.start() for m in re.finditer("data034.kom", text)]
        print(f"=== Found {len(matches)} matches ===")
        for idx, pos in enumerate(matches):
            print(f"Match {idx+1}:")
            print(text[max(0, pos-200) : min(len(text), pos+400)])
            print("-" * 50)
            
if __name__ == "__main__":
    main()
