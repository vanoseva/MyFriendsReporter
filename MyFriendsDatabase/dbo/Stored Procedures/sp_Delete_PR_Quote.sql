Create Procedure [dbo].[sp_Delete_PR_Quote](@Order_ID nvarchar(50)) 
as	
	DELETE FROM PR_Quote WHERE s_Order_ID=@Order_ID
