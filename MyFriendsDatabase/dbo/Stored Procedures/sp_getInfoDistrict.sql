Create  Procedure  [dbo].[sp_getInfoDistrict](@s_ID nvarchar(50))
as

	Select * from [LS_Districts] where [s_ID]=@s_ID