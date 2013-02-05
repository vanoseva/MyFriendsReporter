Create  Procedure  [dbo].[sp_getDiscount_forNumber](@m_Revenue money,@dt_Date smalldatetime)
as

		SELECT pr.* FROM LS_Discount ls, PR_DiscountDetail pr 
        WHERE ls.s_id=pr.s_discount_id and datediff(day,d_fromdate,@dt_Date)>=0 and
            datediff(day,d_todate,@dt_Date)<=0 and ls.b_Valid=1 and pr.m_minrevenue<=@m_Revenue 
		order by pr.m_minrevenue desc