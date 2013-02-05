create view [dbo].[V_Trans]
as
select ls1.s_Name as storesourceName, ls2.s_Name as storedesName, ls.* 
from ls_trans ls left outer join ls_stores ls1 on ls.s_Storesource=ls1.s_ID
	left outer join ls_stores ls2 on ls.s_storedes=ls2.s_ID
