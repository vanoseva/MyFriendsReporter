Create   Procedure [dbo].[sp_getList_fromToDate_Import](@fromDate smalldatetime,@toDate smalldatetime)
as
	Select * from ls_Imports 
	where Datediff(day,dt_ImportDate,@fromDate)<=0 and Datediff(day,dt_ImportDate,@toDate)>=0
	Order by dt_ImportDate desc