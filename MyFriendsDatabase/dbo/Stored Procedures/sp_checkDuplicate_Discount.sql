
CREATE  Procedure  [dbo].[sp_checkDuplicate_Discount](@s_ID nvarchar(50),@fromDate smalldatetime,@toDate smalldatetime)
as
	if @s_ID<>''
		select count(*) as C from LS_Discount where
        (     (datediff(day,d_fromdate,@fromDate)>=0 and datediff(day,d_todate,@fromDate)<=0 )
		Or	  (datediff(day,d_fromdate,@toDate)>=0 and datediff(day,d_todate,@toDate)<=0 )
		Or	  (datediff(day,d_fromdate,@fromDate)<=0 and datediff(day,d_todate,@toDate)>=0 )	
		)
        and s_ID<>@s_ID
	else
		select count(*) as C from LS_Discount where
             (datediff(day,d_fromdate,@fromDate)>=0 and datediff(day,d_todate,@fromDate)<=0 )
		Or	  (datediff(day,d_fromdate,@toDate)>=0 and datediff(day,d_todate,@toDate)<=0 )
		Or	  (datediff(day,d_fromdate,@fromDate)<=0 and datediff(day,d_todate,@toDate)>=0 )





 

