CREATE  Procedure [dbo].[sp_CheckUpdate_Product_Store](@Store_ID nvarchar(50),@Product_ID nvarchar(50)) 
as 
	Select count(*) as Q from V_Fix 
	where [Case_ID]='DK' and s_Product_ID=@Product_ID and s_Store_ID=@Store_ID