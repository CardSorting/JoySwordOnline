# JoySword Offline Server Administration Guide

Welcome to the **JoySword Offline Server** administrator guide. This document provides step-by-step instructions in English for managing the offline environment, using database tools, and executing in-game Game Master (GM) / administrator commands.

See [`docs/PROGRESSION_CHESTS.md`](docs/PROGRESSION_CHESTS.md) for the character progression track and maintenance commands.

---

## 1. Login Modes

The default setup uses `LOGIN_MODE=PUBLIC` in `Elsword\offline\offline.env`. Public mode keeps normal account/password lookup, supports multiple users, and only seeds an admin/operator account.

*   **Account Username**: `admin`
*   **Account Password**: `admin`

> [!NOTE]
> `LOGIN_MODE=SINGLE_ADMIN` is available only as a local development shortcut. It rewrites login stored procedures so every login routes to `admin`; do not use it for public users.

Create public users with:

```bat
python scripts\manage-users.py create player001 password123 --cash 100000
```

Bulk import users from CSV:

```bat
python scripts\manage-users.py bulk users.csv --cash 100000
```

The CSV must include `user_id,password` columns. Optional per-row columns are `cash` and `auth_level`.

Before exposing the server to public users, run:

```bat
python scripts\production-audit.py
```

The audit intentionally fails on local defaults such as `ADMIN_PASSWORD=admin`, `DB_PASSWORD=JoySword!Offline123`, `CHANNEL_SERVER_IP=127.0.0.1`, and non-strict readiness.

---

## 2. In-Game GM Chat Commands

Once you log in, you will have **Game Master (GM) / Authority Level 4** privileges. You can enter administrative commands directly into the standard in-game chat box using the `/` prefix.

| Command Syntax | Description | Example |
| :--- | :--- | :--- |
| `/usered <amount>` | Set your character's ED (in-game currency) to the specified amount | `/usered 99999999` |
| `/vp <amount>` | Set your character's VP (Valor Points) to the specified amount | `/vp 50000` |
| `/level <level>` | Change your character's current level | `/level 70` |
| `/al <level>` | Change authority level (default is 4) | `/al 4` |
| `/enchant <level>` | Instantly enchant the equipped weapon/armor to the target level | `/enchant 12` |
| `/pet <args>` | Spawn or manage your pet | `/pet 1` |
| `/dg <dungeon_id>` | Complete or teleport to the specified dungeon | `/dg 1` |
| `/q <quest_id>` | Manage or autocomplete the specified quest | `/q 1001` |
| `/kill` | Instantly kill all monsters in the current dungeon stage | `/kill` |

---

## 3. Database Management

The offline server runs Microsoft SQL Server (MSSQL) inside a Docker container. You can connect to it using external SQL clients such as **DBeaver**, **SQL Server Management Studio (SSMS)**, or directly via the command line.

### Connection Parameters
*   **Host**: `127.0.0.1` (or `localhost`)
*   **Port**: `1433`
*   **Username**: `sa`
*   **Password**: `JoySword!Offline123`

---

## 4. Useful Direct Database Queries

You can execute the following SQL queries to manually adjust character stats, items, or resurrect stones in the `Game01` database.

### Modifying Character Level & ED (Money)
To find a user's `UserUID`:

```sql
SELECT UserUID, UserID
FROM Account.dbo.MUser
WHERE UserID = 'player001';
```

To change the level, EXP, or ED (GamePoint) for that user:
```sql
DECLARE @UserUID BIGINT = 10029;

UPDATE Game01.dbo.GUnit 
SET Level = 70, 
    GamePoint = 2000000000 
WHERE UserUID = @UserUID;
```

### Modifying Cash Shop Balance
By default, the setup scripts initialize the admin account with **2,000,000,000 Cash**. If you need to top up or adjust a user's balance, run:
```sql
DECLARE @UserUID BIGINT = 10029;

UPDATE ES_BILLING.dbo.EB_Cash
SET NO_REMAIN_CASH = 2000000000,
    NO_REMAIN_BONUS = 2000000000
WHERE CD_USERUID = @UserUID;
```

### Viewing Character List
To inspect all character records associated with a user:
```sql
DECLARE @UserUID BIGINT = 10029;

SELECT UnitUID, UnitClass, Level, Exp, GamePoint, RegDate 
FROM Game01.dbo.GUnit 
WHERE UserUID = @UserUID;
```

### Granting GM Authority
To grant GM rights to an account, you must authorize the change by setting `CONTEXT_INFO` to `0xDEADBEEF` before executing the queries (this is a security feature to prevent unauthorized injection attacks from elevating accounts):
```sql
DECLARE @UserUID BIGINT;
SELECT @UserUID = UserUID FROM Account.dbo.MUser WHERE UserID = 'player001';

-- Set security context info
SET CONTEXT_INFO 0xDEADBEEF;

IF NOT EXISTS (SELECT 1 FROM Account.dbo.MUserAuthority WHERE UserUID = @UserUID)
    INSERT INTO Account.dbo.MUserAuthority (UserUID, AuthLevel) VALUES (@UserUID, 4);
ELSE
    UPDATE Account.dbo.MUserAuthority SET AuthLevel = 4 WHERE UserUID = @UserUID;

-- Reset context info
SET CONTEXT_INFO 0x0;
```

---

## 5. Starting and Stopping the Server

Use the helper scripts located in the `scripts` directory of the workspace:

### Start the Databases
- **macOS/Linux**: `./scripts/start-database.sh`
- **Windows**: `scripts\start-database.bat`

### Restore Databases and Apply Login Mode
Every time you run the setup/restore script, databases are restored and the selected `LOGIN_MODE` is applied:
- **macOS/Linux**: `./scripts/setup-offline.sh`
- **Windows**: `scripts\setup-offline.bat`

### Stop Databases
- **macOS/Linux**: `./scripts/stop-database.sh`
- **Windows**: `scripts\stop-database.bat`
