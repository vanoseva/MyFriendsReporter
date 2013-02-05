CREATE Procedure [dbo].[sp_getListOrderDetailReturn](@ID nvarchar(50))          
as          
	 Select ls.s_Product_ID as Product_IDchar, ls.s_Name as Product_Name, 
		dt.[s_ID],dt.[s_Order_ID],dt.[s_Product_ID],dt.[f_Quantity],dt.[m_Price],dt.[f_Discount],dt.[s_Store_ID],
		ISNULL(pr.s_Unit, dt.s_Unit) AS s_Unit,
		dt.[f_Convert],dt.[b_isPromotion],dt.[b_isFix],dt.[i_IDSort],dt.[ImportID],dt.[s_Note], 
  		dt.f_Quantity*(dt.m_Price-m_Price*dt.f_Discount/100) as m_Total , dt.m_Price as m_OriPrice         
	  from Pr_OrderDetailReturns dt 
			Join ls_Products ls ON dt.s_Product_ID=ls.s_ID
			LEFT JOIN PR_Product_Units pr ON dt.s_Unit = pr.s_ID
	  where  dt.s_Order_ID=@ID