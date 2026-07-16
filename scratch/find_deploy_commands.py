import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
transcript_path = Path("C:/Users/media/.gemini/antigravity-ide/brain/298d0be1-0e25-4c7d-b193-b297b362558f/.system_generated/logs/transcript.jsonl")

if not transcript_path.exists():
    print("Transcript not found")
    exit(1)

for line in open(transcript_path, encoding="utf-8", errors="ignore"):
    try:
        obj = json.loads(line)
        if obj.get("type") == "PLANNER_RESPONSE":
            for tc in obj.get("tool_calls", []):
                if tc.get("name") == "run_command":
                    cmd = tc["args"]["CommandLine"]
                    if any(w in cmd.lower() for w in ("wrangler", "r2", "pages", "deploy", "bucket", "aws", "boto3")):
                        print(f"Step {obj['step_index']}: {cmd}")
    except Exception as e:
        pass
