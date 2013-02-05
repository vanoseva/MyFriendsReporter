
create  Procedure [dbo].[sp_getList_FromToDate_Outcome](@fromDate smalldatetime,@toDate smalldatetime)
as
	Select *  from LS_Outcome
	where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0
	order by dt_DayMonth desc