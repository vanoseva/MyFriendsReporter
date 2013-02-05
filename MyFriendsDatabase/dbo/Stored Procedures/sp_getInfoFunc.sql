Create  Procedure  [dbo].[sp_getInfoFunc](@ID int)
as

	Select * from LS_FUN  where [i_ID]=@ID