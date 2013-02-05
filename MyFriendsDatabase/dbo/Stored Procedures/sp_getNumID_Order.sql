
create  Procedure [dbo].[sp_getNumID_Order] (@s_ID nvarchar(50))
as
	SELECT isnull(left(s_Order_ID,len(s_Order_ID)-7),0) as s_Num
	FROM LS_Orders WHERE s_ID=@s_ID
