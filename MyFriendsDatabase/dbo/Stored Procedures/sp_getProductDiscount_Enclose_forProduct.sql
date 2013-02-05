Create  Procedure  [dbo].[sp_getProductDiscount_Enclose_forProduct](@f_Quantity float,
				@s_Product_ID nvarchar(50),@dt_Date smalldatetime)
as
		SELECT * from V_Enclose 
         WHERE b_Valid=1 and 
            datediff(day,d_fromdate,@dt_Date)>=0 and datediff(day,d_todate,@dt_Date)<=0 and
            s_product_ID=@s_Product_ID and f_Quantity<>0 and f_Quantity<=@f_Quantity
