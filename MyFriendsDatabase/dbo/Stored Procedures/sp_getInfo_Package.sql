Create Procedure [dbo].[sp_getInfo_Package](@Product_ID nvarchar(50)) 
as	
	Select * from [PR_Package] where [s_Product_ID]=@Product_ID Order by [i_IDSort] asc

