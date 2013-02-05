Create  Procedure  [dbo].[sp_checkProduct_Discount_forProduct](@m_MinRevenue money,
				@s_Product_ID nvarchar(50),@dt_Date smalldatetime)
as
		SELECT prl.* 
         FROM LS_Discount_Product ls, PR_Discount_ProductDetail pr, 
            PR_Discount_ProductDetail_Level prl
			WHERE ls.s_id=pr.s_discount_id and pr.s_ID=prl.s_DiscountDetail_ID and ls.b_Valid=1 and 
            datediff(day,ls.d_fromdate,@dt_Date)>=0 and datediff(day,ls.d_todate,@dt_Date)<=0 and
            pr.s_product_ID=@s_Product_ID and prl.m_MinRevenue<=@m_MinRevenue
