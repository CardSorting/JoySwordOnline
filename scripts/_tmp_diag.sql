USE Game01;
SET NOCOUNT ON;
SELECT U.UserID, G.UnitUID, G.UnitClass, G.Level, G.Exp, G.Deleted, N.NickName
FROM dbo.GUnit G
JOIN Account.dbo.MUser U ON U.UserUID = G.UserUID
LEFT JOIN dbo.GUnitNickName N ON N.UnitUID = G.UnitUID
WHERE U.UserID = 'admin' AND G.Deleted = 0
ORDER BY G.UnitClass;

SELECT COUNT(*) AS skill_rows FROM dbo.GSkill_New WHERE UnitUID IN (
  SELECT G.UnitUID FROM dbo.GUnit G JOIN Account.dbo.MUser U ON U.UserUID=G.UserUID WHERE U.UserID='admin' AND G.Deleted=0
);
SELECT COUNT(*) AS item_rows FROM dbo.GItem WHERE UnitUID IN (
  SELECT G.UnitUID FROM dbo.GUnit G JOIN Account.dbo.MUser U ON U.UserUID=G.UserUID WHERE U.UserID='admin' AND G.Deleted=0
);
SELECT COUNT(*) AS lastpos_rows FROM dbo.GUnitLastPosition WHERE UnitUID IN (
  SELECT G.UnitUID FROM dbo.GUnit G JOIN Account.dbo.MUser U ON U.UserUID=G.UserUID WHERE U.UserID='admin' AND G.Deleted=0
);

EXEC sp_helptext 'gup_select_unit';
