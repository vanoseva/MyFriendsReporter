CREATE  Procedure  [dbo].[sp_Delete_GroupUser](@ID nvarchar(50))  
as  
 Delete from [Ls_GroupUser] where [s_ID]=@ID