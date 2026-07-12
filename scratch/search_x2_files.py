from pathlib import Path
import re

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
X2_EXE = ROOT / "data" / "x2.exe"

def main():
    if X2_EXE.exists():
        data = X2_EXE.read_bytes()
        
        # Search ASCII and UTF-16LE
        # UTF-16LE is represented by inserting null bytes between characters
        # Let's write a regex that matches either ASCII or UTF-16LE
        # Or we can just convert the binary to a string, ignoring null bytes or decoding as utf-16
        
        # Let's decode the entire file as UTF-16LE with surrogatepass/ignore
        text_utf16 = data.decode(encoding="utf-16le", errors="ignore")
        text_ascii = data.decode(encoding="ascii", errors="ignore")
        
        matches1_ascii = re.findall(r'DLG_Unit_Select_Slot_[A-Za-z0-9_]*', text_ascii)
        matches1_utf16 = re.findall(r'DLG_Unit_Select_Slot_[A-Za-z0-9_]*', text_utf16)
        
        matches2_ascii = re.findall(r'DLG_Unit_Select_Name_[A-Za-z0-9_]*', text_ascii)
        matches2_utf16 = re.findall(r'DLG_Unit_Select_Name_[A-Za-z0-9_]*', text_utf16)
        
        print("=== Matches for DLG_Unit_Select_Slot_ ===")
        for m in sorted(set(matches1_ascii + matches1_utf16)):
            print(f"  {m}")
            
        print("\n=== Matches for DLG_Unit_Select_Name_ ===")
        for m in sorted(set(matches2_ascii + matches2_utf16)):
            print(f"  {m}")

if __name__ == "__main__":
    main()
