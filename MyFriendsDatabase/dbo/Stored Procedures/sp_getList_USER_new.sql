CREATE Procedure [dbo].[sp_getList_USER_new](@IDGroup nvarchar(50))
as     
	select * from LS_USER lsu inner join Ls_GroupUser lsG on lsu.s_Group_ID = lsG.s_ID 
	where lsu.s_Group_ID=@IDGroup