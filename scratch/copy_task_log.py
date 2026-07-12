import shutil
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
LOG = Path(r"C:\Users\monst\.gemini\antigravity-ide\brain\51d6f618-a3d8-4e39-a0a3-b57b4d72266e\.system_generated\tasks\task-1419.log")

def main():
    if LOG.exists():
        shutil.copy2(LOG, ROOT / "scratch" / "task_log.txt")
        print("Log copied successfully.")
    else:
        print("Log file not found.")

if __name__ == "__main__":
    main()
