import os
from pathlib import Path

ROOT = Path("c:/Users/media/Downloads/JoySwordOffline")

def patch_file(path: Path):
    try:
        content = path.read_text(encoding="utf-8", errors="ignore")
    except Exception as e:
        print(f"Skipping {path}: {e}")
        return
        
    modified = False
    
    # 1. Python representation replacement
    if '"-c"' in content:
        content = content.replace('"-c"', '"-c"')
        modified = True
    if "'-c'" in content:
        content = content.replace("'-c'", "'-c'")
        modified = True
        
    # 2. Batch/Shell file representation replacement
    if 'bash -c' in content:
        content = content.replace('bash -c', 'bash -c')
        modified = True
        
    if modified:
        path.write_text(content, encoding="utf-8", newline="\r\n")
        print(f"Patched: {path.relative_to(ROOT)}")

def main():
    # Patch all files in scripts
    for file_path in (ROOT / "scripts").rglob("*"):
        if file_path.is_file() and file_path.suffix in (".py", ".bat", ".sh"):
            patch_file(file_path)
            
    # Also patch batch files in root
    for file_path in ROOT.glob("*.bat"):
        if file_path.is_file():
            patch_file(file_path)

if __name__ == "__main__":
    main()
