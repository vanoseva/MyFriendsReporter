CREATE  Procedure [dbo].[sp_getInfo_MakeProduct](@Product_ID nvarchar(50))     
as     
 Select p.*,ls.[s_Name], ls.s_Product_ID as ProductIDchar,ls.s_Unit  from [PR_MakeProduct] p,[Ls_Products] ls   
where p.[s_Product_ID_1]=ls.[s_ID] and  p.[s_Product_ID]=@Product_ID   
Order by p.[i_IDSort]