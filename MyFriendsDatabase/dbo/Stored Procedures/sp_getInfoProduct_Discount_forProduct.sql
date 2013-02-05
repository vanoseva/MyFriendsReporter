Create  Procedure  [dbo].[sp_getInfoProduct_Discount_forProduct](@ID nvarchar(50))
as
	Select ls.s_ProductGroupID,ls.s_Product_ID as proID, ls.s_ID as Product_ID, 
            ls.s_Unit, ls.s_Name as Product_Name, isnull(pr.f_Quantity,0) as f_Quantity, 
			isnull(pr.f_PromotionalQuantity,0) as f_PromotionalQuantity, 
            isnull(pr.i_Ordinal,0) as i_IDSort, isnull(pr.s_Note,'') as s_Note, pr.s_ID
			from ls_Products ls,PR_Discount_ProductDetail pr 
			where pr.[s_Discount_ID]=@ID and pr.s_Product_ID=ls.s_ID Order by ls.s_Name asc
