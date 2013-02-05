Create  Procedure  [dbo].[sp_getList_Position]
as
	Select * from [LS_Position] Order by s_Name asc
