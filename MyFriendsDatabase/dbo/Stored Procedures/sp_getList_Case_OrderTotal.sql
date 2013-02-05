create  Procedure [dbo].[sp_getList_Case_OrderTotal](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)    
	as    
	 if @caseTime=0    
	  Select* from LS_OrderTotal order by dt_DayMonth desc  
	 else if @caseTime=1    
	  Select* from LS_OrderTotal Where DATEDIFF(day, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc   
	 else if @caseTime=2    
	  Select* from LS_OrderTotal Where DATEDIFF(day, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc    
	 else if @caseTime=3    
	  Select* from LS_OrderTotal Where DATEDIFF(week, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc   
	 else if @caseTime=4    
	  Select* from LS_OrderTotal Where DATEDIFF(week, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc    
	 else if @caseTime=5    
	  Select* from LS_OrderTotal Where DATEDIFF(month, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc    
	 else if @caseTime=6    
	  Select* from LS_OrderTotal Where DATEDIFF(month, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc    
	 else     
	  Select *  from LS_OrderTotal     
					where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0     
					order by dt_DayMonth desc