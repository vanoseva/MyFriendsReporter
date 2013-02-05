create  Procedure  [dbo].[sp_CheckDulicate_GroupUser](@idkh nvarchar(50),@id nvarchar(50))  
as  
 if @id is not null  
  Select count(*) as C from [Ls_GroupUser] where s_Group_ID =@idkh and s_ID<>@id   
 else  
  Select count(*) as C from [Ls_GroupUser] where  s_Group_ID =@idkh