CREATE  Procedure [dbo].[sp_getListDetail_PurchaseImport_Transfer] (@s_ID nvarchar(50),@isCopy bit)              
as              
 if @isCopy=0    
   Select f_Quantity-f_QuantityReceive as f_QuantityOrder,ls.s_Product_ID as Product_IDchar,        
    ls.s_Name as Product_Name,dt.s_OrderID as s_Import_ID, dt.*,       
    dt.f_Quantity*(dt.m_Price-dt.m_Discount-dt.m_Price*dt.f_Discount/100) as m_Total , dt.m_Price as m_OriPrice  
 ,dt.s_ID as s_Purchase_ID             
    from [V_PurchaseImportDetails] dt,ls_Products ls               
    where dt.s_Product_ID=ls.s_ID and f_Quantity-f_QuantityReceive>0  and s_OrderID=@s_ID     
 else    
  Select f_Quantity as f_QuantityOrder,ls.s_Product_ID as Product_IDchar,        
    ls.s_Name as Product_Name,dt.s_OrderID as s_Import_ID, dt.*,       
    dt.f_Quantity*(dt.m_Price-dt.m_Discount-dt.m_Price*dt.f_Discount/100) as m_Total , dt.m_Price as m_OriPrice    
 ,dt.s_ID as s_Purchase_ID  
    from [V_PurchaseImportDetails] dt,ls_Products ls               
    where dt.s_Product_ID=ls.s_ID  and s_OrderID=@s_ID      
  