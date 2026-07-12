from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
CLIENT_SCRIPT = ROOT / "Elsword" / "ClientScript"

def main():
    if CLIENT_SCRIPT.exists():
        found = []
        for p in CLIENT_SCRIPT.rglob("*.lua"):
            found.append(p.relative_to(CLIENT_SCRIPT))
        print(f"=== Found {len(found)} Lua files in ClientScript ===")
        for f in sorted(found):
            print(f"  {f}")
    else:
        print("ClientScript folder does not exist!")

if __name__ == "__main__":
    main()
