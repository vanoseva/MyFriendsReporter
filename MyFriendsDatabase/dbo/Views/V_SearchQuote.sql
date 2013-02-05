CREATE view [dbo].[V_SearchQuote]  
as  
  select ls.s_ID,ls.s_Order_ID,ls.s_Object_ID,o.s_Name as ObjectName,ls.dt_CreateDate,ls.m_Total2,ls.i_TermID as s_Name,ls.s_Status,  
 p.s_Product_ID,p.s_Name as ProName,p.s_Unit,pr.f_Quantity,pr.m_Price,p.f_MinInStock,p.f_MaxInStock,p.s_ProductGroupID,'BG'as sType,g.s_Name as GroupName  
,o.s_District_ID,d.s_Name as DisName,d.s_Province_ID,t.s_Name as ProvinceName,pay.s_Name as PaymentName
,p.s_Specification,p.s_Quantification,p.s_Color
  from ls_quote ls left join pr_quote pr on ls.s_ID=pr.s_Order_ID  
 left join ls_products p on pr.s_Product_ID=p.s_ID 
 left join ls_ProductGroups g on p.s_ProductGroupID=g.s_ID  
 left join ls_Objects o on ls.s_Object_ID=o.s_ID
 left join  ls_districts d on o.s_District_ID=d.s_ID
 left join ls_Provinces t on d.s_Province_ID=t.s_ID
 left join ls_PaymentTerm pay on ls.i_TermID=pay.s_ID