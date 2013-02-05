CREATE Procedure [dbo].[sp_getListUnitPurchase_Product_Units]  
as   
 SELECT *   
         FROM (   
            SELECT s_ID=s_Unit, s_Product_ID=s_ID, s_Unit, f_ConvertedQuantity=cast(1 as Float)   
                ,b_DefaultImport=cast(0 as bit), m_UnitPrice ,cast(0 as int) as nCase
            FROM LS_Products  
            UNION ALL   
            SELECT s_ID=pr.s_ID, s_Product_ID=pr.s_Product_ID, s_Unit=pr.s_Unit, f_ConvertedQuantity=pr.f_ConvertedQuantity   
                ,b_DefaultImport, m_UnitPrice=ls.m_UnitPrice * f_ConvertedQuantity   ,cast(0 as int) as nCase
            FROM PR_Product_Units pr JOIN Ls_Products ls ON pr.s_Product_ID=ls.s_ID   
         ) as kq  
         ORDER BY kq.s_Product_ID asc,kq.b_DefaultImport desc, kq.nCase asc  