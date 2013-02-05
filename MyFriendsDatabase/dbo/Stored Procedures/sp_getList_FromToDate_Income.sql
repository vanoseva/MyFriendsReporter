
create  Procedure [dbo].[sp_getList_FromToDate_Income](@fromDate smalldatetime,@toDate smalldatetime)
as
	Select *  from LS_Income
	where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0
	order by dt_DayMonth desc
