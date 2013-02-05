Create  Procedure  [dbo].[sp_getListVisible_Products](@s_ProductGroupID nvarchar(50))
as
	if @s_ProductGroupID<>''
		Select * from [LS_Products] where s_ProductGroupID=@s_ProductGroupID AND b_Visible=1 Order by s_Name asc	
	else
		Select * from [LS_Products] where b_Visible=1 Order by s_Name asc