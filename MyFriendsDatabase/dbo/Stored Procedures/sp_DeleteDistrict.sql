Create  Procedure  [dbo].[sp_DeleteDistrict](@s_ID nvarchar(50))
as

	Delete from [LS_Districts] where [s_ID]=@s_ID