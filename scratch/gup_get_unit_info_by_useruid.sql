CREATE PROCEDURE [dbo].[gup_get_unit_info_by_useruid]
	@iUserUID_ [bigint]
AS
SET NOCOUNT ON;

SELECT  a.UnitUID
,       a.UnitClass
,       a.[Exp]
,       a.[Level]
,       a.GamePoint
,		c.Rating
,       a.BaseHP
,       a.AtkPhysic
,       a.AtkMagic
,       a.DefPhysic
,       a.DefMagic
,       a.SPoint
,		CASE WHEN b.NickName LIKE '%[_]%' THEN '__DELETED__' ELSE b.NickName END
,       a.LastPosition
    FROM dbo.GUnit as a WITH(NOLOCK)
		JOIN dbo.GUnitPVP AS c WITH (NOLOCK) ON a.UnitUID = c.UnitUID
        JOIN dbo.GUnitNickName as b WITH(NOLOCK)
            ON a.UserUID = @iUserUID_ AND a.Deleted = 0 AND a.UnitUID = b.UnitUID --삭제된 유저 정보 읽어갈까봐...
				ORDER BY a.LastDate DESC

/* ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 캐릭터 삭제 프로세스 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

SELECT A.UnitUID, A.UnitClass, A.[Exp], A.[Level], A.GamePoint
	, D.Rating
	, A.BaseHP, A.AtkPhysic, A.AtkMagic, A.DefPhysic, A.DefMagic, A.SPoint, B.NickName
	, A.LastPosition
	, A.LastDate												--$$서버에서 캐릭터 표시 순서를 정하기 위해 추가(Maxpia)
	, A.Deleted, C.DelAbleDate, C.RestoreAbleDate				-- 캐릭터 삭제 대기 추가로 추가(Maxpia)
	FROM dbo.GUnit AS A WITH(NOLOCK)
	JOIN dbo.GUnitNickName AS B WITH(NOLOCK)
		ON A.UnitUID = B.UnitUID
	LEFT OUTER JOIN dbo.GUnitWaitDelete AS C WITH(NOLOCK)
		ON A.UnitUID = C.UnitUID
	JOIN dbo.GUnitPVP AS D WITH(NOLOCK)
		ON A.UnitUID = D.UnitUID
	WHERE A.UserUID = @UserUID
		AND (
			A.Deleted = 0	-- 삭제된 유저 정보 읽어갈까봐...
			OR ( A.Deleted = 1 AND ISNULL(C.Deleted, 1) = 0)	-- 캐릭터 삭제 대기 추가로 추가(Maxpia)
		)
	--ORDER BY A.LastDate DESC									--$$서버에서 정렬 처리하기로함.(Maxpia)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */


(1 rows affected)
