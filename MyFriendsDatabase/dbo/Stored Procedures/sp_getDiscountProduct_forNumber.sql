Create  Procedure  [dbo].[sp_getDiscountProduct_forNumber](@m_Revenue money,@dt_Date smalldatetime)
as
		Declare @s_ID nvarchar(50)
		SELECT @s_ID=s_ID  FROM V_Discount_Detail WHERE
        datediff(day,d_fromdate,@dt_Date)>=0 and
        datediff(day,d_todate,@dt_Date)<=0 and b_Valid=1 and m_MinRevenue<=@m_Revenue 
        order by m_MinRevenue asc
		set @s_ID=isnull(@s_ID,'-1')
		
		SELECT prd.* from PR_DiscountDetail_Enclose prd 
        WHERE prd.s_DiscountDetail_ID=@s_ID
		