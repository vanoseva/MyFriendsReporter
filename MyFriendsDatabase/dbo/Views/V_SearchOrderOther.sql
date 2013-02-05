CREATE view [dbo].[V_SearchOrderOther]
as
	select ls.s_ID,ls.s_Order_ID,'' as s_Object_ID,'' as ObjectName,ls.dt_OrderDate as dt_CreateDate,ls.m_OrderTotal as m_Total2,'' as s_Name,N'Xuất khác'as s_Status,  
	p.s_Product_ID,p.s_Name as ProName,p.s_Unit,pr.f_Quantity,pr.m_Price,p.f_MinInStock,p.f_MaxInStock,p.s_ProductGroupID,'XK'as sType,g.s_Name as GroupName      
  	,'' as s_District_ID,'' as DisName,''as s_Province_ID,'' as ProvinceName,'' as PaymentName
	,p.s_Specification,p.s_Quantification,p.s_Color
	from Ls_Order_Other ls left join PR_OrderDetail_Other  pr on ls.s_ID=pr.s_OrderID
	left join ls_Products p on pr.s_Product_ID=p.s_ID  
	left join ls_ProductGroups g on p.s_ProductGroupID=g.s_ID