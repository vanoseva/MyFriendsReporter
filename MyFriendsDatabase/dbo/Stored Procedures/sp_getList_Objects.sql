Create  Procedure  [dbo].[sp_getList_Objects]
as
	Select * from [V_FullObjects] Order by s_Name asc