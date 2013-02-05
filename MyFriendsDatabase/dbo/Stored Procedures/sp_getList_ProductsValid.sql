CREATE  Procedure  [dbo].[sp_getList_ProductsValid]           
as       
 Select cast(0 as bit) as isSelect, ls.*, lsg.s_Name as GroupName,pr.f_CurInstock             
from [LS_Products] ls   
inner JOIN             
 LS_ProductGroups lsg on ls.s_ProductGroupID=lsg.s_ID   
LEFT OUTER JOIN             
 V_Totol_Product_Store pr ON pr.s_Product_ID=ls.s_ID    
where  ls.b_Visible=1 and (ls.b_IsMaterial=1 or ls.b_IsEndProduct=1)
Order by ls.s_Name asc