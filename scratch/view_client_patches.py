from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
PATCH_SCRIPT = ROOT / "scripts" / "patch-client-kom.py"

def main():
    if PATCH_SCRIPT.exists():
        text = PATCH_SCRIPT.read_text(encoding="utf-8", errors="replace")
        
        # Let's find "CLIENT_PATCHES"
        start = text.find("CLIENT_PATCHES: dict[str, dict[str, Path]] = {")
        if start != -1:
            end = text.find("}", start)
            # Find the second closing brace since it's a nested dict
            end = text.find("}", end + 1)
            print(text[start : end + 2])
            
if __name__ == "__main__":
    main()
