#!/usr/bin/env python3
import os, subprocess, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
env = {}
for line in (ROOT / "Elsword" / "offline" / "offline.env").read_text(encoding="utf-8", errors="replace").splitlines():
    if "=" in line and not line.strip().startswith("#"):
        k, v = line.split("=", 1)
        env[k.strip()] = v.strip()
sql = (ROOT / "scripts" / "_tmp_diag.sql").read_text(encoding="utf-8")
bash = r"""
set -e
if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
  CMD=/opt/mssql-tools18/bin/sqlcmd
  EXTRA=(-C)
else
  CMD=/opt/mssql-tools/bin/sqlcmd
  EXTRA=()
fi
cat > /tmp/d.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -W -s'|' -i /tmp/d.sql
"""
ce = os.environ.copy()
ce["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
r = subprocess.run(
    ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
    cwd=ROOT, input=sql, capture_output=True, text=True, encoding="utf-8", errors="replace",
)
out = ROOT / "scripts" / "_diag_out.txt"
out.write_text((r.stdout or "") + (r.stderr or ""), encoding="utf-8")
print(f"wrote {out}")
raise SystemExit(r.returncode)
