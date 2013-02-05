CREATE  Procedure [dbo].[sp_getList_Case_Event](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)  
as  
 if @caseTime=0  
  Select* from PR_Events order by dt_DayMonth desc, i_IDSort  desc  
 else if @caseTime=1  
  Select* from PR_Events Where DATEDIFF(day, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, i_IDSort  desc  
 else if @caseTime=2  
  Select* from PR_Events Where DATEDIFF(day, dt_DayMonth, GETDATE())=1 order by  dt_DayMonth desc, i_IDSort  desc  
 else if @caseTime=3  
  Select* from PR_Events Where DATEDIFF(week, dt_DayMonth, GETDATE())=0 order by  dt_DayMonth desc, i_IDSort  desc  
 else if @caseTime=4  
  Select* from PR_Events Where DATEDIFF(week, dt_DayMonth, GETDATE())=1 order by  dt_DayMonth desc, i_IDSort  desc  
 else if @caseTime=5  
  Select* from PR_Events Where DATEDIFF(month, dt_DayMonth, GETDATE())=0 order by  dt_DayMonth desc, i_IDSort  desc  
 else if @caseTime=6  
  Select* from PR_Events Where DATEDIFF(month, dt_DayMonth, GETDATE())=1 order by  dt_DayMonth desc, i_IDSort  desc  
 else   
  Select *  from PR_Events   
                where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0   
                order by dt_DayMonth desc, i_IDSort desc  
  