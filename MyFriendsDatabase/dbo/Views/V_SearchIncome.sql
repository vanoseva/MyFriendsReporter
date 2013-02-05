CREATE view [dbo].[V_SearchIncome]
as
	select ls.s_ID,ls.s_NumberID as s_Order_ID,ls.s_Object_ID,o.s_Name as ObjectName,ls.dt_DayMonth as dt_CreateDate,ls.m_Total as m_Total2,'' as s_Name,'Đã thu' as s_Status,    
	v.s_Order_ID as s_Product_ID,'' as ProName,'' as s_Unit,0 as f_Quantity,pr.m_total as m_Price,0 as f_MinInStock,
	0 as f_MaxInStock,'' as s_ProductGroupID,'TT'as sType,''as GroupName      
	,o.s_District_ID,d.s_Name as DisName,d.s_Province_ID,t.s_Name as ProvinceName,'' as PaymentName
	,''as s_Specification,''as s_Quantification,'' as s_Color
	from Ls_Income ls left join Pr_NumberIncome pr on ls.s_ID=pr.s_IncomeID
	left join ls_Objects o on ls.s_Object_ID=o.s_ID  
	left join V_Orders v on pr.s_NumberID=v.s_ID
	left join  ls_districts d on o.s_District_ID=d.s_ID
	left join ls_Provinces t on d.s_Province_ID=t.s_ID