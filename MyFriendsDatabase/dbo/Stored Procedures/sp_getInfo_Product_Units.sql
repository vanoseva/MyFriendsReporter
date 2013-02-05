Create Procedure [dbo].[sp_getInfo_Product_Units](@Product_ID nvarchar(50)) 
as	
	Select * from [PR_Product_Units] where [s_Product_ID]=@Product_ID Order by i_Ordinal asc

