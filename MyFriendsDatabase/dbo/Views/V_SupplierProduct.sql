CREATE View [dbo].[V_SupplierProduct]    
as    
 Select Distinct dt.s_Product_ID as Product_ID,i.s_Object_ID as [Object_ID],ls.s_ProductGroupID as Group_ID  
 from Ls_Imports i,PR_ImportDetail dt,Ls_Products ls    
 where i.s_ID=dt.s_Import_ID and ls.s_ID=dt.s_Product_ID
 Union 
 Select Distinct dt.s_Product_ID as Product_ID,i.s_Object_ID as [Object_ID],ls.s_ProductGroupID as Group_ID  
 from Ls_Import_Other i,PR_ImportDetail_Other dt,Ls_Products ls    
 where i.s_ID=dt.s_Import_ID and ls.s_ID=dt.s_Product_ID