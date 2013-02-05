CREATE  Procedure  [dbo].[sp_getList_ProductInstock_Quote](@ID nvarchar(50))
as
	select pr.s_store_id, pr.f_curinstock, ls.*
	from ls_products ls right outer join pr_product_store pr on ls.s_id=pr.s_product_id 
	Where ls.s_id=@ID and pr.f_curinstock>0
	Order by ls.s_Name asc