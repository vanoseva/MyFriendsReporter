CREATE VIEW [dbo].[V_rptOrderTotal]
	as
		select tt.s_ID,tt.s_OrderTotal_ID,tt.dt_DayMonth,tt.m_OrderTotal,tt.s_Note,dtt.s_Order_ID,dt.Product_IDchar,dt.Product_Name,
		dt.f_Quantity,dt.m_Price,dt.f_Discount,dt.m_Discount,dt.f_Vat,dt.m_Total,dt.s_Store_ID,dt.s_Unit,
		dt.i_Ordinal,dt.GroupKey,dt.GroupID,dt.GroupName
	 from ls_ordertotal tt,Pr_orderTotalDetail dtt,v_orderdetail dt
	where tt.s_ID=dtt.s_OrderTotal_ID and dtt.s_Order_ID=dt.s_OrderID