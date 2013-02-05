Create  Procedure  [dbo].[sp_getListCheckStore]
as
	Select * from LS_CheckStore order by dt_dayMonth desc