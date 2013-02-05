 CREATE  Procedure [dbo].[sp_getList_Case_Trans](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)    
as    
 if @caseTime=0    
  Select* from V_Trans order by dt_DayMonth desc, i_IDSort  desc --dt_OrderDate    
 else if @caseTime=1    
  Select* from V_Trans Where DATEDIFF(day, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, i_IDSort  desc    
 else if @caseTime=2    
  Select* from V_Trans Where DATEDIFF(day, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, i_IDSort  desc    
 else if @caseTime=3    
  Select* from V_Trans Where DATEDIFF(week, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, i_IDSort  desc    
 else if @caseTime=4    
  Select* from V_Trans Where DATEDIFF(week, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, i_IDSort  desc    
 else if @caseTime=5    
  Select* from V_Trans Where DATEDIFF(month, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, i_IDSort  desc    
 else if @caseTime=6    
  Select* from V_Trans Where DATEDIFF(month, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, i_IDSort  desc    
 else     
  Select *  from V_Trans     
                where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0     
                order by dt_DayMonth desc, i_IDSort desc 