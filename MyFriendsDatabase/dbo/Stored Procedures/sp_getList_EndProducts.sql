CREATE  Procedure  sp_getList_EndProducts      
as      
 Select cast(0 as bit) as isSelect, ls.*, lsg.s_ProductGroup_ID as GroupID, lsg.s_Name as GroupName   
from [LS_Products] ls left outer join LS_ProductGroups lsg on ls.s_ProductGroupID=lsg.s_ID  
 where ls.b_IsEndProduct=1   
Order by ls.s_Name asc