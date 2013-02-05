



CREATE  Procedure [dbo].[sp_getList_FromToDate_Order](@fromDate smalldatetime,@toDate smalldatetime)
as
	Select *  from V_Orders
	where Datediff(day,dt_OrderDate,@fromDate)<=0 and Datediff(day,dt_OrderDate,@toDate)>=0
	order by dt_OrderDate desc



