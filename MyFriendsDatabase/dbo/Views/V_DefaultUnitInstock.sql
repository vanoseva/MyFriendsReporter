CREATE View [dbo].[V_DefaultUnitInstock]    
as    
 Select ls.s_ID as Product_Key,ls.s_Product_ID as Product_ID,ls.s_Name as Product_Name,ls.s_ProductGroupID as Group_ID,isnull(pr.s_Unit,ls.s_Unit) as Unit,isnull(pr.f_ConvertedQuantity,1) as Exchange    
 ,ls.s_Unit as UnitMain  
 from ls_Products ls left join PR_Product_Units pr On pr.s_Product_ID=ls.s_ID    
 and [b_DefaultInstock]=1
where  ls.b_Visible=1 