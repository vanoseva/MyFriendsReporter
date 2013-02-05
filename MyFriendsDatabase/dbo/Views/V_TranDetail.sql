
CREATE VIEW [dbo].[V_TranDetail]  
AS    
SELECT     dbo.LS_Products.s_Product_ID AS Product_IDchar, dbo.LS_Products.s_Name AS Product_Name,   
dbo.pr_transdetails.s_ID,     
                      dbo.pr_transdetails.s_NumberID, dbo.pr_transdetails.s_Product_ID,   
dbo.pr_transdetails.f_Quantity,   
dbo.pr_transdetails.m_Price, dbo.pr_transdetails.s_ImportID,   dbo.pr_transdetails.f_QuantityOrder,                      
                       
dbo.pr_transdetails.s_StoreSource, dbo.pr_transdetails.s_StoreDes,   --dbo.pr_transdetails.s_Unit, 
                      ISNULL(dbo.PR_Product_Units.s_Unit, dbo.pr_transdetails.s_Unit) AS s_Unit,   
dbo.pr_transdetails.f_Exchange, dbo.pr_transdetails.s_Note,     
                      dbo.pr_transdetails.i_IDSort  
FROM         dbo.pr_transdetails LEFT OUTER JOIN    
                      dbo.PR_Product_Units ON dbo.pr_transdetails.s_Unit = dbo.PR_Product_Units.s_ID LEFT OUTER JOIN    
                      dbo.LS_Products ON dbo.pr_transdetails.s_Product_ID = dbo.LS_Products.s_ID  