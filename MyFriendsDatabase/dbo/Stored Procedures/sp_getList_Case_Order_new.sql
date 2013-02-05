

create  Procedure [dbo].[sp_getList_Case_Order_new](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime,@ID nvarchar(100))
as
	if @caseTime=0
		Select* from V_Orders where s_ObjectID=@ID order by dt_orderdate desc, i_IDSort  desc --dt_OrderDate
	else if @caseTime=1
		Select* from V_Orders Where DATEDIFF(day, dt_OrderDate, GETDATE())=0 and s_ObjectID=@ID order by dt_orderdate desc, i_IDSort  desc
	else if @caseTime=2
		Select* from V_Orders Where DATEDIFF(day, dt_OrderDate, GETDATE())=1 and s_ObjectID=@ID order by dt_orderdate desc, i_IDSort  desc
	else if @caseTime=3
		Select* from V_Orders Where DATEDIFF(week, dt_OrderDate, GETDATE())=0 and s_ObjectID=@ID order by dt_orderdate desc, i_IDSort  desc
	else if @caseTime=4
		Select* from V_Orders Where DATEDIFF(week, dt_OrderDate, GETDATE())=1 and s_ObjectID=@ID order by dt_orderdate desc, i_IDSort  desc
	else if @caseTime=5
		Select* from V_Orders Where DATEDIFF(month, dt_OrderDate, GETDATE())=0 and s_ObjectID=@ID order by dt_orderdate desc, i_IDSort  desc
	else if @caseTime=6
		Select* from V_Orders Where DATEDIFF(month, dt_OrderDate, GETDATE())=1 and s_ObjectID=@ID order by dt_orderdate desc, i_IDSort  desc
	else 
		Select *  from V_Orders 
                where Datediff(day,dt_OrderDate,@fromDate)<=0 and Datediff(day,dt_OrderDate,@toDate)>=0 and s_ObjectID=@ID
                order by dt_orderdate desc, i_IDSort desc



