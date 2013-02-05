CREATE  Procedure [dbo].[sp_getList_Case_OrderReturns](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)    
as    
 if @caseTime=0    
  Select* from V_OrderReturns order by dt_OrderDate  desc    
 else if @caseTime=1    
  Select* from V_OrderReturns  Where DATEDIFF(day, dt_OrderDate, GETDATE())=0 order by dt_OrderDate  desc    
 else if @caseTime=2    
  Select* from V_OrderReturns  Where DATEDIFF(day, dt_OrderDate, GETDATE())=1 order by dt_OrderDate  desc    
 else if @caseTime=3    
  Select* from V_OrderReturns  Where DATEDIFF(week, dt_OrderDate, GETDATE())=0 order by dt_OrderDate  desc    
 else if @caseTime=4    
  Select* from V_OrderReturns  Where DATEDIFF(week, dt_OrderDate, GETDATE())=1 order by dt_OrderDate  desc    
 else if @caseTime=5    
  Select* from V_OrderReturns  Where DATEDIFF(month, dt_OrderDate, GETDATE())=0 order by dt_OrderDate  desc    
 else if @caseTime=6    
  Select* from V_OrderReturns  Where DATEDIFF(month, dt_OrderDate, GETDATE())=1 order by dt_OrderDate  desc    
 else     
  Select *  from V_OrderReturns      
                where Datediff(day,dt_OrderDate,@fromDate)<=0 and Datediff(day,dt_OrderDate,@toDate)>=0     
                order by dt_OrderDate desc 