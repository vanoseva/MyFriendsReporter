CREATE  Procedure [dbo].[sp_LoadInfo_Product_Store](@Store_ID nvarchar(50))          
as          
   Select ls.s_ProductGroupID, ls.s_Product_ID as proID,ls.s_ID as Product_ID, ls.s_Name as Product_Name,           
   cast(1 as float) as f_ConvertedQuantity, pr.s_ID,pr.s_Store_ID,isnull(pr.f_QuantityBegin,0) as f_QuantityBegin,          
   isnull(pr.f_QuantityBegin,0) as f_QOrigin,     isnull(pr.m_PriceBegin,ls.m_UnitPurchase) as m_PriceBegin,               
   isnull(pr.f_CurInstock,0) as f_CurInstock,     isnull(pr.f_MinInstock,ls.f_MinInstock) as f_MinInstock,               
   isnull(pr.f_MaxInstock,ls.f_MaxInstock) as f_MaxInstock,     isnull(pr.i_IDSort,0) as i_IDSort,           
   isnull(pr.s_Unit,ls.s_Unit) as s_Unit,     isnull(pr.s_Unit,'-1') as u  from ls_Products ls               
    left outer join (Select * from [Pr_Product_Store] where s_Store_ID=@Store_ID) AS pr           
   On pr.s_Product_ID=ls.s_ID   
 where  ls.b_Visible=1  and (ls.b_IsMaterial=1 or ls.b_IsEndProduct=1)
 Order by ls.s_Name asc 
          
   Select pr.* from PR_Product_Units pr where pr.b_DefaultInstock=1          
          
   Select u.* from [Pr_Product_Store] pr ,PR_Product_Units u          
   where pr.[s_Unit]=u.[s_ID] and pr.s_Store_ID=@Store_ID