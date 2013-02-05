Create  Procedure  [dbo].[sp_getList_fromToDate_Discount_forProduct](@fromDate smalldatetime,@toDate smalldatetime)
as
	Select *  from [LS_Discount_Product] 
	where 
		(Datediff(day,d_FromDate,@fromDate)>=0 and Datediff(day,d_ToDate,@fromDate)<=0)
        or (Datediff(day,d_FromDate,@toDate)>=0 and Datediff(day,d_ToDate,@toDate)<=0)
         or (Datediff(day,d_FromDate,@fromDate)<=0 and Datediff(day,d_ToDate,@toDate)>=0)

	 order by d_FromDate desc
