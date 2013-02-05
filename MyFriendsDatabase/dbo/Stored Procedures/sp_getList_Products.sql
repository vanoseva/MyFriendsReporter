CREATE  Procedure  [dbo].[sp_getList_Products]                
as   
Select cast(0 as bit) as isSelect,ls.* ,      
lsg.s_Name as GroupName,pr.f_CurInstock,ls.b_IsMaterial,ls.b_IsEndProduct,ls.b_IsService,ls.b_Menu  
from [LS_Products] ls inner JOIN               
LS_ProductGroups lsg on ls.s_ProductGroupID=lsg.s_ID LEFT OUTER JOIN               
[V_TotalInstock] pr ON pr.s_Product_ID=ls.s_ID where isnull(ls.b_Menu,0)=1  
Order by ls.s_Name asc