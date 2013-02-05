  
CREATE  Procedure  [dbo].[sp_getInfo_GroupUser](@ID nvarchar(50))  
as  
 Select * from [Ls_GroupUser] where [s_ID]=@ID