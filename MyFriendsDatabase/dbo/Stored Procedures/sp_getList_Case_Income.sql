CREATE  Procedure [dbo].[sp_getList_Case_Income](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)  
as  
 if @caseTime=0  
  Select* from V_Income order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  
 else if @caseTime=1  
  Select* from V_Income Where DATEDIFF(day, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  
 else if @caseTime=2  
  Select* from V_Income Where DATEDIFF(day, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  
 else if @caseTime=3  
  Select* from V_Income Where DATEDIFF(week, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  
 else if @caseTime=4  
  Select* from V_Income Where DATEDIFF(week, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  
 else if @caseTime=5  
  Select* from V_Income Where DATEDIFF(month, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  
 else if @caseTime=6  
  Select* from V_Income Where DATEDIFF(month, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  
 else   
  Select *  from V_Income   
                where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0   
                order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc  