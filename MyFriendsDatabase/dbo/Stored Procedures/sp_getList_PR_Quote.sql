Create Procedure [dbo].[sp_getList_PR_Quote](@Order_ID nvarchar(50)) 
as	
	SELECT * FROM PR_Quote WHERE s_Order_ID=@Order_ID Order by i_IDSort

