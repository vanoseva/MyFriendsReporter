CREATE  Procedure [dbo].[sp_getList_Case_ImportReturns](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)          
as          
 if @caseTime=0          
  Select * from V_ImportReturns   order by dt_ImportDate  desc          
 else if @caseTime=1          
  Select * from V_ImportReturns    Where DATEDIFF(day, dt_ImportDate, GETDATE())=0 order by dt_ImportDate  desc          
 else if @caseTime=2          
  Select * from V_ImportReturns    Where DATEDIFF(day, dt_ImportDate, GETDATE())=1 order by dt_ImportDate  desc          
 else if @caseTime=3          
  Select * from V_ImportReturns    Where DATEDIFF(week, dt_ImportDate, GETDATE())=0 order by dt_ImportDate  desc          
 else if @caseTime=4          
  Select * from V_ImportReturns    Where DATEDIFF(week, dt_ImportDate, GETDATE())=1 order by dt_ImportDate  desc          
 else if @caseTime=5          
  Select * from V_ImportReturns    Where DATEDIFF(month, dt_ImportDate, GETDATE())=0 order by dt_ImportDate  desc          
 else if @caseTime=6          
  Select * from V_ImportReturns    Where DATEDIFF(month, dt_ImportDate, GETDATE())=1 order by dt_ImportDate  desc          
 else           
  Select * from V_ImportReturns              
                where Datediff(day,dt_ImportDate,@fromDate)<=0 and Datediff(day,dt_ImportDate,@toDate)>=0           
                order by dt_ImportDate desc 