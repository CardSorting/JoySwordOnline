from pathlib import Path

p = Path(__file__).resolve().parent.parent / "Elsword/ClientScript/Major/Item.lua"
text = p.read_text(encoding="utf-8")
needle = "m_ItemID = 160267,"
start = text.index(needle)
shop = text.index("m_ShopImage", start)
fixed = (
    "       m_ItemID = 160267,\n"
    '       m_Name = "Max Level Scroll",\n'
    '       m_Description = "A scroll infused with condensed experience.\\n'
    'Instantly raises your character to the maximum level.\\n\\n'
    '(Right-click to use)",\n\n\n'
    '       m_ShopImage = "HQ_Shop_Item_160267.dds",'
)
# Replace from m_ItemID through start of m_ShopImage line content
block_start = text.rfind("\n", 0, start) + 1
shop_line_end = text.find("\n", shop)
old = text[block_start:shop_line_end]
if "Max Level Scroll" not in old:
    raise SystemExit("unexpected item block")
text = text[:block_start] + fixed + text[shop_line_end:]
p.write_text(text, encoding="utf-8")
print("fixed item 160267 block")
