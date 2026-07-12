#!/usr/bin/env python3
import os
import sys
import zipfile
from pathlib import Path

def zip_dir(dir_path: Path, zip_path: Path):
    print(f"Zipping {dir_path} to {zip_path} with POSIX permissions...")
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(dir_path):
            for file in files:
                filepath = Path(root) / file
                # Compute relative path using forward slashes
                relpath = filepath.relative_to(dir_path).as_posix()
                
                zinfo = zipfile.ZipInfo(relpath)
                # Set POSIX permissions: 0o100644 (regular file, rw-r--r--)
                zinfo.external_attr = (0o100644) << 16
                
                with open(filepath, 'rb') as f:
                    zipf.writestr(zinfo, f.read())
                    
            for d in dirs:
                dirpath = Path(root) / d
                # Compute relative path for directory (must end with slash)
                relpath = dirpath.relative_to(dir_path).as_posix() + '/'
                
                zinfo = zipfile.ZipInfo(relpath)
                # Set POSIX permissions: 0o040755 (directory, rwxr-xr-x)
                zinfo.external_attr = (0o040755) << 16
                zipf.writestr(zinfo, b'')

def main():
    if len(sys.argv) < 3:
        print("Usage: zip_package.py <dir_path> <zip_path>")
        sys.exit(1)
        
    dir_path = Path(sys.argv[1]).resolve()
    zip_path = Path(sys.argv[2]).resolve()
    
    if not dir_path.is_dir():
        print(f"Error: {dir_path} is not a directory")
        sys.exit(1)
        
    zip_dir(dir_path, zip_path)
    print("Zipping complete.")

if __name__ == "__main__":
    main()
