Create  Procedure  [dbo].[sp_getListIsMaterial_Products]
as
	Select ls.*, lsg.s_Name as GroupName,cast(0 as bit) as isSelect,cast(0 as float) as Qty from [LS_Products] ls, LS_ProductGroups lsg where ls.b_IsMaterial=1 and ls.s_ProductGroupID=lsg.s_ID Order by ls.s_Name asc

