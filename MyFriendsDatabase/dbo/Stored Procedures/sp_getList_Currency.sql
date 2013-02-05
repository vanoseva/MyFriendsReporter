
create  Procedure  [dbo].[sp_getList_Currency]
as
	Select * from [LS_Currency] Order by s_Name asc
