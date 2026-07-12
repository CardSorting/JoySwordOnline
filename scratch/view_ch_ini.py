from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
INI = ROOT / "Elsword" / "ChannelServer" / "config_ch.ini"

def main():
    if INI.exists():
        data = INI.read_bytes()
        try:
            print("UTF-16 Decode:")
            print(data.decode("utf-16"))
        except Exception:
            try:
                print("UTF-8 Decode:")
                print(data.decode("utf-8"))
            except Exception as e:
                print("Error:", e)
    else:
        print("Not found")

if __name__ == "__main__":
    main()
