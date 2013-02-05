CREATE Procedure [dbo].[sp_getListUnitSale_Product_Units]  
as   
 SELECT kq.s_ID,kq.s_Product_ID,kq.s_Unit,kq.f_ConvertedQuantity, kq.b_DefaultOrders,kq.m_UnitPrice,kq.nCase  
         FROM (   
            SELECT s_ID=s_Unit, s_Product_ID=s_ID, s_Unit, f_ConvertedQuantity=cast(1 as Float)   
                ,b_DefaultOrders=cast(0 as bit), m_UnitPrice,cast(0 as int) as nCase
            FROM LS_Products  
            UNION ALL   
            SELECT s_ID=pr.s_ID, s_Product_ID=pr.s_Product_ID, s_Unit=pr.s_Unit, f_ConvertedQuantity=pr.f_ConvertedQuantity   
                ,b_DefaultOrders, m_UnitPrice=ls.m_UnitPrice * f_ConvertedQuantity,cast(1 as int) as nCase   
            FROM PR_Product_Units pr JOIN Ls_Products ls ON pr.s_Product_ID=ls.s_ID   
         ) as kq  
         ORDER BY kq.s_Product_ID asc,kq.b_DefaultOrders desc,kq.nCase asc  
  