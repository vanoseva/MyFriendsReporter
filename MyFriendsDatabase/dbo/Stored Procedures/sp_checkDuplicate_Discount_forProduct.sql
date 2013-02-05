Create  Procedure  [dbo].[sp_checkDuplicate_Discount_forProduct](@s_Discount_ID nvarchar(50),@s_Product_ID nvarchar(50),
														@fromDate smalldatetime,@toDate smalldatetime)
as
	if @s_Discount_ID<>''
		Select isnull(count(*),0) as c from V_Discount_ProductDetail where 

        (
         (Datediff(day,d_FromDate,@fromDate)>=0 and Datediff(day,d_ToDate,@fromDate)<=0)
        or (Datediff(day,d_FromDate,@toDate)>=0 and Datediff(day,d_ToDate,@toDate)<=0)
         or (Datediff(day,d_FromDate,@fromDate)<=0 and Datediff(day,d_ToDate,@toDate)>=0)
        )
         and s_Product_ID=@s_Product_ID and s_Discount_ID<>@s_Discount_ID
    else
		Select isnull(count(*),0) as c from V_Discount_ProductDetail where 

        (
         (Datediff(day,d_FromDate,@fromDate)>=0 and Datediff(day,d_ToDate,@fromDate)<=0)
        or (Datediff(day,d_FromDate,@toDate)>=0 and Datediff(day,d_ToDate,@toDate)<=0)
         or (Datediff(day,d_FromDate,@fromDate)<=0 and Datediff(day,d_ToDate,@toDate)>=0)
        )
         and s_Product_ID=@s_Product_ID 
 
