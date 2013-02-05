CREATE Procedure [dbo].[sp_getListImportDetail](@ID nvarchar(50))          
as          
 Select ls.s_Product_ID as Product_IDchar, ls.s_Name as Product_Name,dt.s_ID, dt.s_Import_ID, dt.s_Product_ID, dt.f_Quantity, dt.m_Price, dt.s_Store_ID,       
  ISNULL(dbo.PR_Product_Units.s_Unit, dt.s_Unit) AS s_Unit,dt.f_Convert, dt.f_QuantityOrder, dt.i_IDsort, dt.m_PriceUSD, dt.dt_OverDate, dt.f_Discount,       
  dt.m_Discount, dt.s_Note, dt.f_Quantity * ((dt.m_Price - dt.m_Discount) - dt.m_Price * dt.f_Discount / 100) AS m_Total, dt.m_Price AS m_OriPrice  
 , dt.s_Purchase_ID  
  FROM dbo.PR_ImportDetail AS dt left outer JOIN        
       dbo.LS_Products AS ls ON dt.s_Product_ID = ls.s_ID LEFT OUTER JOIN        
       dbo.PR_Product_Units ON dt.s_Unit = dbo.PR_Product_Units.s_ID     
  where dt.s_Import_ID=@ID  order by dt.i_IDSort asc