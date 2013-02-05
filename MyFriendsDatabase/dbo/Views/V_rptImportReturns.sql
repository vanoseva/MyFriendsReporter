--Phieu nhap hang trả    
CREATE view [dbo].[V_rptImportReturns]    
as    
 Select mas.s_ID,mas.s_Import_ID,mas.dt_ImportDate,mas.s_Object_ID,mas.s_Word,    
   mas.f_VAT,mas.f_Discount,m_Discount=  mas.f_Discount*(del.f_Quantity*del.m_PriceImport)/100    
   ,m_VAT=mas.f_VAT*(del.f_Quantity*del.m_PriceImport)/100    
   ,pro.s_Product_ID,pro.s_Name,del.f_Quantity,del.m_PriceImport,TotalOrder=del.f_Quantity*del.m_PriceImport    
   ,del.s_Unit,sto.s_Store_ID,StoreName=sto.s_Name    
 From LS_ImportReturns mas    
 inner join PR_ImportDetailReturn del ON mas.s_ID=del.s_Import_ID    
 left join LS_Products pro ON del.s_Product_ID=pro.s_ID    
 left join LS_Stores sto ON del.s_Store_ID=sto.s_ID