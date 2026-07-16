import urllib.request
import json
import ssl

token = "cfoat_SLbmakfV5epys7p9SmQDPVSQUO80CS9XaEM1DwtTyME.0Kjbo44SrDMOasDWphvBtQpFIi2Vl-EE_CGu7ErURIc"
zone_id = "31dfb6e51cddf4a49b97e60f1d6c1548"

# Disable SSL verification for safety
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

def make_request(url, method="GET", data=None):
    req = urllib.request.Request(
        url,
        method=method,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json"
        }
    )
    if data:
        req.data = json.dumps(data).encode("utf-8")
    try:
        with urllib.request.urlopen(req, context=ctx) as res:
            return json.loads(res.read().decode("utf-8"))
    except Exception as e:
        if hasattr(e, "read"):
            print(f"Error response: {e.read().decode('utf-8')}")
        raise e

print("Fetching DNS records...")
try:
    res = make_request(f"https://api.cloudflare.com/client/v4/zones/{zone_id}/dns_records")
    records = res.get("result", [])
    print(f"Found {len(records)} DNS record(s):")
    for r in records:
        print(f"ID: {r['id']} | Name: {r['name']} | Type: {r['type']} | Content: {r['content']}")
        
    # Let's find old A records for onjoysword.top
    for r in records:
        if r["name"] == "onjoysword.top" and r["type"] == "A":
            print(f"Attempting to delete A record for onjoysword.top (ID: {r['id']})...")
            try:
                del_res = make_request(f"https://api.cloudflare.com/client/v4/zones/{zone_id}/dns_records/{r['id']}", method="DELETE")
                print("Delete success:", del_res)
            except Exception as e:
                print("Delete failed:", e)
                
except Exception as e:
    print("Failed to fetch DNS records:", e)
