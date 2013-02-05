CREATE proc [dbo].[sp_getListProduct_forPriceLevel] 
as        
  Select cast(0 as bit) as isSelect, s_ID as proID,s_Product_ID,      
 s_name,s_Unit,m_UnitPurchase,m_UnitPrice,cast(0.00 as money)as m_CustomPrice    
from [LS_Products]  Order by s_Name asc 