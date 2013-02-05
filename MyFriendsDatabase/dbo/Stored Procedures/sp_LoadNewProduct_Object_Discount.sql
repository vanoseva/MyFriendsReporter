Create Procedure [dbo].[sp_LoadNewProduct_Object_Discount](@ID nvarchar(50)) 
as
		Select cast(0 as bit) as isSelect, ls.s_ProductGroupID, ls.s_Product_ID as proID, 
         ls.s_ID as Product_ID, ls.s_Unit, ls.s_Name as Product_Name, 
         isnull(pr.m_MinREvenue,0) as MinEvenue, isnull(pr.m_MaxREvenue,0) as MaxEvenue, 
         isnull(f_Percentage,0) as Percentage, isnull(pr.i_Ordinal,0) as i_IDSort, isnull(pr.s_Note,'') as s_Note
         from ls_Products ls 
         left outer join (Select * from PR_Object_DiscountDetail where [s_Discount_ID]=@ID) AS pr on ls.s_ID=pr.s_Product_ID 
        Order by ls.s_Name asc