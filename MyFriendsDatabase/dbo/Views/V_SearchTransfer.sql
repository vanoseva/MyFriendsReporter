CREATE view [dbo].[V_SearchTransfer]
as
	select ls.s_ID,ls.s_NumberID as s_Order_ID,'' as s_Object_ID,'' as ObjectName,ls.dt_DayMonth as dt_CreateDate,0 as m_Total2,'' as s_Name,N'Chuyển kho'as s_Status,  
	p.s_Product_ID,p.s_Name as ProName,p.s_Unit,pr.f_Quantity,pr.m_Price,p.f_MinInStock,p.f_MaxInStock,p.s_ProductGroupID,'CK'as sType,g.s_Name as GroupName      
  	,'' as s_District_ID,'' as DisName,''as s_Province_ID,'' as ProvinceName,'' as PaymentName
	,p.s_Specification,p.s_Quantification,p.s_Color
	from LS_Trans ls left join PR_TransDetails  pr on ls.s_ID=pr.s_NumberID
	left join ls_Products p on pr.s_Product_ID=p.s_ID  
	left join ls_ProductGroups g on p.s_ProductGroupID=g.s_ID