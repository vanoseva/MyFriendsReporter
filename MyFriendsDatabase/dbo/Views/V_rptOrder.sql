 CREATE view [dbo].[V_rptOrder]              
as              
 Select ful.s_ID,ful.m_VAT,f_VAT=case ful.f_VAT when -1 then 0 else ful.f_VAT end,ful.s_ObjectID,ful.dt_OrderDate,ful.s_Order_ID    
 ,ful.s_Word    
 ,pro.s_Product_ID,pro.s_Name,del.s_Unit,del.f_Quantity,del.m_Price,del.m_Total          
    ,StoteID=sto.s_Store_ID,StoreName=sto.s_Name,ful.s_Note  
 , ful.m_OrderTotal    
 ,m_Discount=ful.m_Per,del.f_Discount      
 From v_FullOrder ful              
 left join v_OrderDetail del on ful.s_ID=del.s_OrderID              
 left join ls_Products pro on del.s_Product_ID=pro.s_ID              
 left join ls_Stores sto on del.s_Store_ID=sto.s_ID 