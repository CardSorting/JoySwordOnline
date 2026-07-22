# Cash Shop Catalog, Purchase, and Locker Troubleshooting Runbook

Use this runbook for Cash Shop failures involving impossible prices, blank
category tabs, a locker reported as full while empty, or Cash Shop data that
works only after an unexplained restart.

The Cash Shop uses native GameServer database readers. Those readers consume
stored-procedure result sets by **ordinal and SQL type**, not by column name.
Do not treat their projections as flexible application queries.

## Fast triage

| Symptom | Most likely fault | First check |
|---|---|---|
| Prices are huge, negative, or otherwise impossible | `EBP_Product_SEL` column order/type mismatch | Product selector metadata |
| Featured items work but every normal tab is blank | Product rows fail while GameServer loads the catalog | GameServer `DoQuery_GetProductList` errors and selector metadata |
| Purchase reports a query-call failure | Native 16-argument purchase call does not match a stored procedure | Latest GameServer purchase error and procedure parameter order |
| Purchase says `EBI_Buy_Product_CHK` has too many arguments | A gacha script replaced the shared seven-parameter product check | Product-check parameter metadata |
| Purchase fails only for a new or cashless account | Cash initializer omits required native `EB_Cash` fields | `EB_Cash` schema and `JoySword_EnsureUserCashAccount` |
| Locker says full with no visible items | `EBP_BuyCashItemLockerCount_CHK` returns no `Result` record | Locker count procedure output |
| Locker count and visible rows disagree | `EB_BuyCashItemLockerCount` is stale | Reconcile count from `EB_BuyCashItemLocker` |
| Purchase succeeds but the item disappears from the locker | Locker selector shifts the product ID behind account fields | `EBP_BuyCashItemLocker_SEL` result metadata |
| Locker item is visible but cannot be retrieved | Transaction ID exceeds the GameServer's 32-bit pickup field | Pickup `iTransNo` and `EBP_BuyCashItemTake_SET` result |

Apply the authoritative repair before restarting anything:

```powershell
python scripts\run_sql_file.py database\fix-cashshop-billing-transactions.sql
python scripts\run_sql_file.py database\fix-cash-deduction.sql
```

The normal setup, post-restore, and automatic startup flows already apply this
file. If a database was restored manually, run the command above once after
the restore.

## Catalog contract

`dbo.EBP_Product_SEL` must return **exactly 15 fields**, in this order:

| Ordinal | Field | Expected SQL type |
|---:|---|---|
| 1 | `CD_PRODUCTNO` | `int` |
| 2 | `NO_PRODUCTID` | `int` |
| 3 | `DI_ISSALE` | `bit` |
| 4 | `DI_ISEVENT` | `bit` |
| 5 | `DI_ISSHOW` | `bit` |
| 6 | `DI_ISCASHINVENSKIP` | `bit` |
| 7 | `ST_PRODUCTNAME` | `nvarchar(128)` |
| 8 | `CD_CATEGORYNO` | `tinyint` |
| 9 | `NO_SALEPRICE` | `int` |
| 10 | `NO_REALPRICE` | `int` |
| 11 | `NO_PERIOD` | `tinyint` |
| 12 | `NO_QUANTITY` | `tinyint` |
| 13 | `DI_ENABLEGIFT` | `bit` |
| 14 | `NO_LIMITLEVEL` | `tinyint` |
| 15 | `ST_PRODUCTNAME_LOCAL` | `nvarchar(128)` |

The GameServer consumes this projection positionally. In particular, do not
insert `NO_LIMIT_USERUID`, `DT_STARTDATE`, or `DT_ENDDATE` into it. Doing so
shifts the later fields: category and price reads become corrupted, individual
catalog rows throw database-read errors, and ordinary category tabs render
empty even if featured content still appears.

Check the live metadata in SQL Server:

```sql
USE ES_BILLING;
EXEC sys.sp_describe_first_result_set @tsql = N'EXEC dbo.EBP_Product_SEL';
```

The normalized catalog has sale prices in the `500`–`60000` range. Check that
the database did not regain an outlier:

```sql
SELECT
    COUNT(*) AS sale_products,
    MIN(NO_SALEPRICE) AS min_price,
    MAX(NO_SALEPRICE) AS max_price,
    SUM(CASE WHEN NO_SALEPRICE < 0 OR NO_SALEPRICE > 60000 THEN 1 ELSE 0 END)
        AS out_of_range_prices
FROM ES_BILLING.dbo.EB_Product
WHERE DI_ISSALE = 1;
```

After repairing the product selector, restart the offline server stack so the
GameServer discards its cached catalog:

```powershell
python scripts\stop-offline.py
python scripts\start-offline.py
```

Then inspect the newest `Elsword\GameServer\log\*.htm` file. It must contain
zero `KGSBillingDBThread::DoQuery_GetProductList(), DB Query Exception` entries.

## Summons and claimable items

If the Summons tab has no pets or mounts, do not add arbitrary product rows to
the database. The product must satisfy all of these source contracts:

1. It has a permanent creation entry in `Elsword\ServerResource\PetData.lua`
   or `Elsword\ServerResource\RidingPetData.lua`.
2. It has a real `IT_SPECIAL` template in an `Item.lua` source.
3. It has a positive `AddCashItemPrice` entry in both
   `Elsword\ServerResource\CashItemPrice.lua` and
   `Elsword\GameServer\CashItemPrice.lua`.

The restore script assigns those creation IDs directly to category `61` (Pet)
or `63` (Mount) before applying name and equipment heuristics. This is
intentional: adult pet names such as `Mystic` do not necessarily contain the
word `Pet`, and some pet items also carry accessory metadata. Name-based
classification sends those valid creation items to unrelated tabs.

Do not price every ID in the pet or riding-pet data files. Historical event,
test, and regional entries can lack an actual item template. Selling one of
those stale IDs lets the purchase complete but fails at claim with a problem
receiving the item. `scripts\recover-cashshop-variety.py` now filters recovery
to permanent `IT_SPECIAL` templates, and `scripts\restore-cashshop.py` uses
the same permanent creation-ID registry for category assignment.

Both Cash Item Price Lua files must parse cleanly. A bare English sentence
outside a Lua comment causes `CXSLCashItemManager::OpenScriptFile` to reject
the whole price file, which makes valid database rows disappear from normal
category tabs. After changing price data, restart the GameServer and confirm
that its newest log contains neither of these messages:

- `Cash Item Price info load failure`
- `Cash Package Item info load failure`

Package claims have a separate contract. The server resource at
`Elsword\Resources\PackageItemData.lua` must begin with the UTF-8 BOM bytes
`EF BB BF`. The native Cash Item package loader rejects a BOM-less file before
it executes any mapping, even if the Lua source is otherwise valid. The Lua
header comment alone is not sufficient. `scripts\restore-cashshop.py` writes
this server copy with `utf-8-sig` so restores preserve the required BOM.

The client package source can also contain historical mappings whose package or
component ID no longer has an active template in `Item.lua`. The restore
workflow ignores comments, removes duplicate pairs, and excludes the entire
package when any mapped item is not receivable. It also excludes price rows
without an active item template, preventing purchases that would later fail
with a problem receiving the item.

Costume packages are intentionally kept as package rows in the locker. On a
successful purchase, the GameServer immediately reads the package's remaining
component IDs through `dbo.EBP_BuyCashItemLocker_Package_SEL`, then opens the
native package picker so the player can select the socket options for each
costume piece. That query accepts only client-safe transaction IDs from `1` to
`2000000000`. Early offline builds used date-based IDs far outside that range;
one such pending package made the GameServer's component query fail and broke
the picker for every package on that account. Running
`database\fix-cashshop-billing-transactions.sql` now remaps pending legacy
locker rows and their component/audit rows to sequence IDs in the safe range,
then adds a database constraint so the regression cannot recur.

Run the focused check and rebuild the catalog after a source repair:

```powershell
python tests\test-master-economy.py TestMasterEconomy.test_cashshop_summon_catalog_and_package_contracts
$env:JOYSWORD_SKIP_CASHSHOP_REBALANCE = '1'
python scripts\restore-cashshop.py
```

## Purchase contract

The native GameServer calls Cash Shop purchase procedures by **position**, with
exactly 16 arguments. The first 15 identify the order, account, character,
product, quantity, price, recipient, and cash type. Argument 16 is always
`@NO_CHANNEL_CODE`.

`dbo.EBP_BuyItem` must therefore place `@NO_CHANNEL_CODE` immediately after
`@DI_BUY_CASH`; its output values (`@NO_TOTAL_CASH`, `@CD_TRAN_NUM`,
`@NO_REMAIN_CASH`, and `@NO_REMAIN_BONUS`) follow it and remain optional.
`dbo.EBP_BuyItemLog_INS` receives the same 16 native values during the
prepare-purchase stage. Its four trailing accounting fields and `@FLAG` must
have defaults because the GameServer does not send them. That 16-argument
preflight form must also return one integer `Result = 0` row. The internal
`EBP_BuyItem` call supplies a generated transaction number and must not emit
that extra row, because its own purchase result must remain the first record
set returned to the GameServer.

Before that purchase is accepted, `dbo.EBP_Prepare_Buy_Product_CHK` calls
`dbo.EBI_Buy_Product_CHK` with a product ID plus six output fields:
sale state, start/end dates, gift flag, sale price, and real price. Do not
replace this shared procedure with a one-argument gacha stub. The SQL error
that it has "too many arguments" means that stub is installed; rerun
`fix-cashshop-billing-transactions.sql` to restore the full contract.

If the newest GameServer log says that `EBP_BuyItemLog_INS` expects
`@NO_TOTAL_CASH`, the log procedure is using the incompatible signature. The
prepare stage aborts before the real purchase is attempted, so the UI reports
a generic query-call failure.

The native `EB_Cash` table also requires `ST_USERID`, both total-charge
counters, and first/recharge dates. `JoySword_EnsureUserCashAccount` must
create all of those fields for a user who has no billing row yet. An error
stating that `ST_USERID` (or another required `EB_Cash` column) cannot be
`NULL` identifies an old, partial initializer rather than a bad item price or
locker state.

Apply both repair scripts shown in **Fast triage**, then close and reopen the
Cash Shop (or relog) and retry the purchase. These procedures are called for
each request, so a full server restart is not required after the SQL repair.

## Locker contract

The locker has two related tables:

- `EB_BuyCashItemLocker` is the source of truth for unclaimed items.
- `EB_BuyCashItemLockerCount` is a per-user, per-server capacity cache.

The native GameServer sends an inventory inquiry to
`dbo.EBP_BuyCashItemLockerCount_CHK`. When `@DI_OUTPUT_RECORD = 1`, that
procedure must return one result-set row with an integer `Result` column.

`dbo.EBP_BuyCashItemLocker_SEL` has a separate fixed seven-field response. It
must return, in order: `CD_TRAN_NUM`, `NO_PRODUCT_NUM`, `NO_QUANTITY`,
`DI_PACKAGE`, `NO_NUMBER_PACKAGE`, `NO_FROM_UNITUID`, and `ST_GIFT_MESSAGE`.
`CD_USERUID` and `NO_SERVER_SET_ID` are query inputs, not response fields. If
they are inserted before the product, the GameServer reads the account UID as
the product ID; an affected account with UID `1` logs `product info error` for
`iProductNo : 1` and its valid locker rows are omitted from the UI.

The pickup packet also retains its transaction number in a signed 32-bit field.
`EBI_TransactionNumber_INT` must therefore allocate a positive value no larger
than `2000000000`. A date-prefixed 15-digit transaction number displays in the
locker but is truncated when the GameServer calls `EBP_BuyCashItemTake_SET`;
that procedure returns `Result = -99` and the client reports that the item
cannot be retrieved. The repair uses a durable client-safe SQL sequence for
new purchases and resolves the low 32-bit value of legacy pending rows before
performing the native take operation.

For package products, every pending locker row with `DI_PACKAGE = 1` must have
its component product rows in `EB_BuyCashItemLockerPackage`. The insert repair
backfills missing rows from `EB_ProductPackage`; new package purchases add the
same rows atomically. Without them, package pickup returns `Result = -98`.

An earlier offline compatibility stub only executed `RETURN 0`. That return
status is not a result set. The GameServer's inventory inquiry received no
record and treated the locker as unavailable/full even when both locker tables
contained zero rows.

The current procedure in
`database/fix-cashshop-billing-transactions.sql` follows this behavior:

1. Recalculates the capacity cache from `SUM(NO_QUANTITY)` in actual locker
   rows.
2. Creates or updates the user's count row, including a zero-count row for an
   empty locker.
3. Returns `Result = 0` when the requested quantity fits, or a nonzero result
   when it would exceed the configured `100` item capacity.

This prevents stale cache rows and prevents an empty locker from becoming a
no-result response.

### Inspect locker state

Run these read-only queries first:

```sql
USE ES_BILLING;

SELECT CD_USERUID, NO_SERVER_SET_ID, COUNT(*) AS locker_rows,
       SUM(CONVERT(int, NO_QUANTITY)) AS locker_quantity
FROM dbo.EB_BuyCashItemLocker
GROUP BY CD_USERUID, NO_SERVER_SET_ID
ORDER BY locker_quantity DESC, CD_USERUID;

SELECT CD_USERUID, NO_SERVER_SET_ID, NO_COUNT
FROM dbo.EB_BuyCashItemLockerCount
ORDER BY CD_USERUID, NO_SERVER_SET_ID;
```

To test and reconcile one known user's locker, run the count procedure with
`@DI_OUTPUT_RECORD = 1`. This updates only that user's cache to match actual
locker rows:

```sql
DECLARE @return_code int;
EXEC @return_code = dbo.EBP_BuyCashItemLockerCount_CHK
    @CD_USERUID = <user_uid>,
    @NO_SERVER_SET_ID = 1,
    @NO_PRODUCT_COUNT = 1,
    @DI_OUTPUT_RECORD = 1,
    @NO_MAX_KEEP_COUNT = 100;

SELECT @return_code AS return_code;
```

For an empty locker, both the returned `Result` and `return_code` must be `0`.
Close and reopen the Cash Shop window (or relog) after applying the repair; a
full server restart is not required for this per-request procedure.

## Regression prevention

- Keep `EBP_Product_SEL` at the exact 15-column contract. Never add a field to
  the middle of its `SELECT`, even if the column exists in `EB_Product`.
- Never replace `EBP_BuyCashItemLockerCount_CHK` with a return-only stub. Its
  `@DI_OUTPUT_RECORD = 1` path must select `@Result AS Result`.
- Preserve the native locker schema names: `NO_PRODUCT_NUM`, `DI_PACKAGE`, and
  `NO_NUMBER_PACKAGE`. The setup SQL includes an upgrade path for the older
  offline schema that used `CD_PRODUCTNO`.
- Keep the seven-field `EBP_BuyCashItemLocker_SEL` projection in its native
  order. Do not return `CD_USERUID` or `NO_SERVER_SET_ID` before the product.
- Keep `EBI_TransactionNumber_INT` within the GameServer's positive 32-bit
  range and preserve the legacy-ID resolution in `EBP_BuyCashItemTake_SET`.
- Populate `EB_BuyCashItemLockerPackage` from `EB_ProductPackage` whenever a
  package locker row is created or repaired.
- Keep `JoySword_SyncCashItemLockerCount` as the single reconciliation point;
  capacity must derive from actual locker rows rather than an unverified cache.
- Do not remove the automatic application of
  `fix-cashshop-billing-transactions.sql` from setup or startup scripts.
- Preserve the native purchase order: `@NO_CHANNEL_CODE` is argument 16 in
  `EBP_BuyItem`, and `EBP_BuyItemLog_INS` must default every field after it.
- For the 16-argument `EBP_BuyItemLog_INS` preflight call, return one integer
  `Result` row; suppress it when an internal transaction number is supplied.
- Keep `EBI_Buy_Product_CHK` at one product ID plus its six output parameters;
  the gacha setup script must use the same signature.
- Keep `fix-cash-deduction.sql` in every setup, restore, and automatic startup
  path alongside the billing transaction repair.
- Keep `JoySword_EnsureUserCashAccount` aligned with the full native
  `EB_Cash` schema; a newly created billing row must populate every non-null
  column before a purchase can debit cash.

Run the focused regression test after any Cash Shop SQL change:

```powershell
python tests\test-master-economy.py TestMasterEconomy.test_cashshop_billing_transactions_sql
python tests\test-master-economy.py TestMasterEconomy.test_cash_deduction_and_price_validation_sql
```

The tests assert the product and locker selector orders, block unsupported or
input-only projection fields, require the locker count's `Result` record,
verify pickup-ID and package-content compatibility, verify the 16-argument
purchase contract, and ensure every supported installer applies both repairs.

## Escalation checklist

If the issue persists after the repair:

1. Record the exact in-game action and whether it is a catalog, purchase, or
   locker-claim failure.
2. Capture the newest GameServer log and count only the relevant
   `KGSBillingDBThread` error entries.
3. Verify procedure metadata and table rows before changing product data.
4. Use a rollback-only SQL transaction for synthetic full/empty locker tests;
   never add test items to a player's live locker.
5. Fix the stored-procedure contract first. Do not mask the symptom by changing
   client UI scripts or assigning arbitrary prices.
