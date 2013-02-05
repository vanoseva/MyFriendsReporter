
Create  Procedure  [dbo].[sp_getList_Discount_fromToDate](@fromDate smalldatetime,@toDate smalldatetime)
as
	Select *  from [LS_Discount] 
	where 
			(datediff(day,d_fromdate,@fromDate)>=0 and datediff(day,d_todate,@fromDate)<=0 )
		Or	  (datediff(day,d_fromdate,@toDate)>=0 and datediff(day,d_todate,@toDate)<=0 )
		Or	  (datediff(day,d_fromdate,@fromDate)>=0 and datediff(day,d_todate,@toDate)>=0 )
	order by d_FromDate desc