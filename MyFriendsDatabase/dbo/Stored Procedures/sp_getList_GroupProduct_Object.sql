CREATE  Procedure  [dbo].[sp_getList_GroupProduct_Object](@Object_ID nvarchar(50))
as  
	if @Object_ID<>'' 
		Select ls.*
		from [LS_ProductGroups] ls
		where ls.s_ID in (Select Group_ID from v_SupplierProduct where Object_ID=@Object_ID) Order by ls.s_Name asc  
	else
		Select ls.*
		from [LS_ProductGroups] ls
		where   ls.s_ID in (Select Group_ID from v_SupplierProduct) Order by ls.s_Name asc 
