CREATE view [dbo].[V_SearchImportReturn]
as
	select ls.s_ID,ls.s_Import_ID as s_Order_ID,ls.s_Object_ID,o.s_Name as ObjectName,ls.dt_ImportDate as dt_CreateDate,ls.m_ImportTotal as m_Total2,'' as s_Name,N'Đã trả hàng' as s_Status,  
	p.s_Product_ID,p.s_Name as ProName,p.s_Unit,pr.f_Quantity,pr.m_PriceImport as m_Price,p.f_MinInStock,p.f_MaxInStock,p.s_ProductGroupID,'TH'as sType,g.s_Name as GroupName      
  	,o.s_District_ID,d.s_Name as DisName,d.s_Province_ID,t.s_Name as ProvinceName,'' as PaymentName
	,p.s_Specification,p.s_Quantification,p.s_Color
	from ls_ImportReturns ls left join PR_ImportDetailReturn pr on ls.s_ID=pr.s_Import_ID
	left join ls_Products p on pr.s_Product_ID=p.s_ID
	left join ls_ProductGroups g on p.s_ProductGroupID=g.s_ID     
	left join ls_Objects o on ls.s_Object_ID=o.s_ID
	left join  ls_districts d on o.s_District_ID=d.s_ID
	left join ls_Provinces t on d.s_Province_ID=t.s_ID