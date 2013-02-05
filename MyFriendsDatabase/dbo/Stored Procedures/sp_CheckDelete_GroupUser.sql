CREATE  Procedure  [dbo].[sp_CheckDelete_GroupUser](@ID nvarchar(50))  
as  
 Select count(*) as C from [LS_USER] where [s_Group_ID]=@ID