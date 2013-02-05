Create  Procedure  [dbo].[sp_checkDiscountProduct_forProduct](@dt_Date smalldatetime)
as
	SELECT count(*) as num FROM LS_Discount_Product 
        WHERE datediff(day,d_fromdate,@dt_Date)>=0 and
            datediff(day,d_todate,@dt_Date)<=0 and b_Valid=1