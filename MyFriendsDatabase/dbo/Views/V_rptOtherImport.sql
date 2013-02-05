-- Phieu nhap khac  
CREATE view [dbo].[V_rptOtherImport]  
as  
 Select mas.s_ID,mas.s_Import_ID,mas.dt_ImportDate,mas.s_Object_ID,mas.s_EmployeeID,mas.s_Word  
   ,pro.s_Product_ID,ProductName=pro.s_Name  
   ,del.f_Quantity,del.m_Price,mas.m_ImportTotal,del.s_Unit  
   ,m_Total=del.f_Quantity*del.m_Price  
   ,sto.s_Store_ID,StoreName=sto.s_Name,MethodName=me.s_Name  
 From Ls_Import_Other mas  
 inner join PR_ImportDetail_Other del on mas.s_ID=del.s_Import_ID  
 left join LS_Products pro on del.s_Product_ID=pro.s_ID  
 left join ls_Stores sto on del.s_Store_ID=sto.s_ID  
 left join Ls_PaymentImport me on mas.i_Item_ID=me.i_ID  