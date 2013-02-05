CREATE VIEW [dbo].[V_quote_Product]          
AS    
  SELECT lsq.s_Object_ID,lsq.dt_CreateDate,lsPay.s_Name as PaymentNote  
  ,PaymentTerm=dateadd(day,lsPay.i_DayNum,dt_CreateDate)        
  ,lsq.f_Deduction,lsq.m_Deduction,lsq.m_Total2  
    ,lsq.s_ID, lsq.s_Order_ID, q.s_Product_ID, s_Unit=ISNULL(pro.s_Unit,lspro.s_Unit)      
    ,lsq.s_Word, q.f_Exchange, q.f_Quantity, q.m_Price, q.f_Discount,  q.i_IDSort, q.s_Note, q.f_VAT,lsq.m_VAT,           
  ProTotal=(q.f_Quantity * q.m_Price) - q.m_Discount*q.f_Quantity - ((q.f_Quantity * q.m_Price) * q.f_Discount /100)       
            
  ,ProductName=p.s_Name           
  ,ProductID=p.s_Product_ID           
  ,OriginalPrice=q.m_Price/q.f_Exchange          
    FROM PR_Quote q JOIN Ls_Products p ON q.s_Product_ID=p.s_ID           
     JOIN ls_Quote lsq ON q.s_Order_ID=lsq.s_ID        
     LEFT JOIN Pr_Product_Units pro ON q.s_Unit=pro.s_ID           
     LEFT JOIN Ls_Products lspro ON q.s_Product_ID=lspro.s_ID         
     LEFT JOIN LS_PaymentTerm lsPay ON lsq.i_TermID=lsPay.s_ID 
