Create  Procedure [dbo].[sp_isExistOrderID_Quote] (@s_Order_ID nvarchar(50))
as
	SELECT * FROM LS_Quote WHERE s_Order_ID=@s_Order_ID