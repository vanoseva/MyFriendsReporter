CREATE  Procedure [dbo].[sp_getList_FromToDate_Trans](@fromDate smalldatetime,@toDate smalldatetime)    
as    
 Select *  from V_Trans    
 where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0    
 order by dt_DayMonth desc 