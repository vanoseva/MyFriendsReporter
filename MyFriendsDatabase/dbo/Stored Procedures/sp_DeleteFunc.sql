CREATE  Procedure  [dbo].[sp_DeleteFunc](@ID int)  
as  
  
 Delete from LS_FUN  where [i_ID]=@ID  --xoa muc cha
 Delete from LS_FUN where i_Uplevel=@ID --xoa muc con
 Delete from PR_FunRight where [FuncID]=@ID