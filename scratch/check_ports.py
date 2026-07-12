import socket

PORTS = {
    "CenterServer (9100)": 9100,
    "LoginServer (9200)": 9200,
    "GameServer (9300)": 9300,
    "ChannelServer (9400)": 9400,
    "GlobalServer (9500)": 9500,
}

def check_port(port: int) -> bool:
    try:
        with socket.create_connection(("127.0.0.1", port), timeout=1.0):
            return True
    except OSError:
        return False

def main():
    for name, port in PORTS.items():
        open_status = "OPEN" if check_port(port) else "CLOSED"
        print(f"{name}: {open_status}")

if __name__ == "__main__":
    main()
