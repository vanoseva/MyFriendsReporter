CREATE  Procedure  [dbo].[sp_getListProduct_Supplier](@Object_ID nvarchar(50)) 
as      
	if @Object_ID<>''     
		Select  ls.*
		from [LS_Products] ls  	 
		where  ls.b_Visible=1 and ls.s_ID in (Select Distinct Product_ID from v_SupplierProduct where Object_ID=@Object_ID)
		      
		Order by ls.s_Name asc 
	else
		Select  ls.*
		from [LS_Products] ls  	 
		where  ls.b_Visible=1 and ls.s_ID in (Select Distinct Product_ID from v_SupplierProduct)
		      
		Order by ls.s_Name asc 