CREATE view [dbo].[V_SearchOutcome]
as
	select ls.s_ID,ls.s_NumberID as s_Order_ID,ls.s_Object_ID,o.s_Name as ObjectName,ls.dt_DayMonth as dt_CreateDate,ls.m_Total as m_Total2,'' as s_Name,'Đã chi' as s_Status,    
	i.s_Import_ID as s_Product_ID,'' as ProName,'' as s_Unit,0 as f_Quantity,pr.m_Total as m_Price,0 as f_MinInStock,
	0 as f_MaxInStock,'' as s_ProductGroupID,'CT'as sType,''as GroupName
	,o.s_District_ID,d.s_Name as DisName,d.s_Province_ID,t.s_Name as ProvinceName,'' as PaymentName 
	,''as s_Specification,''as s_Quantification,''as s_Color     
	from Ls_Outcome ls left join Pr_NumberOutcome pr on ls.s_ID=pr.s_OutcomeID
	left join ls_Objects o on ls.s_Object_ID=o.s_ID  
	left join ls_Imports i on pr.s_NumberID=i.s_ID
	left join  ls_districts d on o.s_District_ID=d.s_ID
	left join ls_Provinces t on d.s_Province_ID=t.s_ID