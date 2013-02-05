Create  Procedure  [dbo].[sp_GetList_Contact]
as	
	Select cast(0 as bit) as isSelect,* from [V_FullContacts] Order by s_Name asc