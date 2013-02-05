Create  Procedure  [dbo].[sp_getList_Provinces]
as
	Select * from [v_Provinces] Order by s_Name asc