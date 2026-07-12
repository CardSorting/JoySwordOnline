USE [Game01]
GO

/*
    Legacy cash class-change items create a self-addressed GPost row whose
    ScIndex is treated as an attachment ItemUID.  In this database that value
    can resolve to an unrelated inventory item, crashing GameServer when the
    recipient claims the mail.  Keep the class change, but suppress its unsafe
    promotion-equipment mail before it can be shown to the client.
*/
CREATE OR ALTER TRIGGER dbo.TR_GPost_BlockClassChangePromotionMail
ON dbo.GPost
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE post
       SET post.IsReceive = 1,
           post.IsRead = 1,
           post.DelDate = DATEADD(minute, 1, post.RegDate)
    FROM dbo.GPost AS post
    INNER JOIN inserted AS new_post
        ON new_post.PostNo = post.PostNo
    WHERE new_post.FromUnitUID = new_post.ToUnitUID
      AND new_post.ScType = 4
      AND new_post.Title IS NULL
      AND new_post.Message IN
      (
          N'214410', N'214420', N'214430', N'214440', N'214450', N'214460',
          N'214470', N'214480', N'214490', N'214500',
          N'216420', N'216430',
          N'217850', N'217860', N'217920', N'217930', N'217950', N'217960',
          N'217970', N'217980',
          N'229460', N'229470', N'235120', N'235130',
          N'242310', N'242320', N'242330', N'242340', N'242350', N'242360',
          N'252640', N'252650', N'252660', N'252670', N'252680', N'252690',
          N'264380', N'264390', N'264393', N'264394'
      );
END
GO

/* Suppress any unsafe class-change reward mail created before installation. */
UPDATE dbo.GPost
   SET IsReceive = 1,
       IsRead = 1,
       DelDate = DATEADD(minute, 1, RegDate)
WHERE FromUnitUID = ToUnitUID
  AND ScType = 4
  AND Title IS NULL
  AND Message IN
  (
      N'214410', N'214420', N'214430', N'214440', N'214450', N'214460',
      N'214470', N'214480', N'214490', N'214500',
      N'216420', N'216430',
      N'217850', N'217860', N'217920', N'217930', N'217950', N'217960',
      N'217970', N'217980',
      N'229460', N'229470', N'235120', N'235130',
      N'242310', N'242320', N'242330', N'242340', N'242350', N'242360',
      N'252640', N'252650', N'252660', N'252670', N'252680', N'252690',
      N'264380', N'264390', N'264393', N'264394'
  );
GO
