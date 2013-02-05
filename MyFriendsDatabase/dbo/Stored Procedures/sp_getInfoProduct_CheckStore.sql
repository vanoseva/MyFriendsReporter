CREATE  Procedure  [sp_getInfoProduct_CheckStore](@ID nvarchar(50),@s_StoreID  nvarchar(50))              
as       
    select ls.s_ProductGroupID,ls.s_ID, ls.s_Product_ID, ls.s_Name ,ls.m_UnitPrice,     
  g.s_Name as GroupName, isnull(pr.f_CurInstock,0) as f_QtyRecords,     
  isnull(pr.f_Qty,0) as f_Origin, isnull(pr.s_Unit,'-1') as u, cast(1 as float) as f_Exchange,            
  isnull(pr.f_CurInstock,0)-isnull(pr.f_Qty,0) as f_LessThan, ls.m_UnitPurchase,pr.s_Unit,pr.f_Qty    
 from pr_checkstore pr left outer join ls_products ls on pr.s_product_id=ls.s_ID    
  left outer join ls_productgroups g on g.s_ID=ls.s_ProductGroupID      
  left outer join pr_product_store ps on pr.s_product_id=ps.s_product_id and ps.s_store_ID=@s_StoreID   
 where pr.s_IDCheck=@ID and ls.b_Visible=1 and (ls.b_IsMaterial=1 or ls.b_IsEndProduct=1)      
 Order by ls.s_Name asc              
 Select pr.* from PR_Product_Units pr where pr.b_DefaultInstock=1              
 Select u.* from PR_Product_Units u