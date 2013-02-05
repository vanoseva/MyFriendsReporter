Create  Procedure  [dbo].[sp_CheckDiscount_forNumber](@dt_Date smalldatetime)
as
		SELECT count(*) as num FROM LS_Discount 
         WHERE datediff(day,d_fromdate,@dt_Date)>=0 and
            datediff(day,d_todate,@dt_Date)<=0 and b_Valid=1