Create Procedure  [dbo].[sp_DeleteBank](@s_ID nvarchar(50))
as

	Delete from [LS_Banks] where [s_ID]=@s_ID