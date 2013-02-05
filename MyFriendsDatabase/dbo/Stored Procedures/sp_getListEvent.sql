
Create  Procedure  [dbo].[sp_getListEvent](@fromDate smallDatetime,@toDate smallDatetime)
as

	Select * from PR_EVents where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0

