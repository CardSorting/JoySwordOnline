import pymssql
import psycopg2

mssql_host = "127.0.0.1"
mssql_user = "sa"
mssql_pass = "JoySwordDb2026!"
mssql_port = 1433

pg_url = "postgresql://joysword:JoySwordPostgresLocal123@localhost:5433/joysword_web"

print("--- Checking MSSQL Account Database ---")
try:
    conn = pymssql.connect(server=mssql_host, user=mssql_user, password=mssql_pass, database="Account", port=mssql_port)
    cursor = conn.cursor()
    cursor.execute("SELECT m_id, m_loginID, m_password, m_status FROM dbo.MUser WHERE m_loginID = 'test13'")
    row = cursor.fetchone()
    if row:
        print(f"Found test13 in MSSQL: ID={row[0]} | LoginID={row[1]} | Password={row[2]} | Status={row[3]}")
    else:
        print("test13 NOT found in MSSQL dbo.MUser table!")
    conn.close()
except Exception as e:
    print("MSSQL Error:", e)

print("\n--- Checking PostgreSQL joysword_web Database ---")
try:
    conn = psycopg2.connect(pg_url)
    cursor = conn.cursor()
    cursor.execute("SELECT id, username, email, is_admin FROM users WHERE username = 'test13'")
    row = cursor.fetchone()
    if row:
        print(f"Found test13 in PostgreSQL: ID={row[0]} | Username={row[1]} | Email={row[2]} | Admin={row[3]}")
    else:
        print("test13 NOT found in PostgreSQL users table!")
    conn.close()
except Exception as e:
    print("PostgreSQL Error:", e)
