Create  Procedure [dbo].[sp_DELETE_Quote] (@ID nvarchar(50))
as
	DELETE FROM PR_Quote WHERE s_Order_ID=@ID
	DELETE FROM LS_Quote WHERE s_ID=@ID