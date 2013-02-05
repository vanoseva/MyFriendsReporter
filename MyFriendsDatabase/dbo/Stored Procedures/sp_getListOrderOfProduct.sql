CREATE proc [dbo].[sp_getListOrderOfProduct](@s_ID as nvarchar(50))
as
	--danh sach xuat gan nhat theo mat hang
	select top 10 vo.s_order_ID,o.s_Name,vo.dt_orderDate,v.s_ID,v.s_OrderID,v.s_Product_ID,v.f_Quantity,
		v.m_price,v.f_discount,v.m_discount,v.m_total,v.s_store_ID,ISNULL(pu.s_Unit, v.s_Unit) AS s_Unit,
		v.f_convert,v.i_Ordinal 
		from v_orderdetail v inner join 
		v_orders vo on v.s_orderID=vo.s_id left outer join 
		pr_product_units pu on v.s_Unit=pu.s_ID left outer join 
		ls_objects o on o.s_ID=vo.s_ObjectID
	where v.s_product_ID=@s_ID
	order by vo.dt_orderDate desc