import re
from pathlib import Path

ROOT = Path(r"c:\Users\media\Downloads\JoySwordOffline - Copy")
sql_file = ROOT / "database" / "restore-cashshop.sql"

content = sql_file.read_text(encoding="utf-8")
lines = content.splitlines()

print(f"Total lines in restore-cashshop.sql: {len(lines)}")

# Let's inspect long strings in EB_Product, EB_ProductCategory, EB_ProductPackage
product_names = []
for line in lines:
    if "INSERT INTO dbo.EB_Product " in line or line.startswith("("):
        # find N'...' or '...'
        matches = re.findall(r"N?'((?:''|[^'])*)'", line)
        for m in matches:
            if len(m) > 40:
                product_names.append((len(m), m))

product_names.sort(key=lambda x: x[0], reverse=True)
print("\nTop 15 longest strings in SQL script:")
for length, s in product_names[:15]:
    print(f"  Length {length}: '{s}'")
