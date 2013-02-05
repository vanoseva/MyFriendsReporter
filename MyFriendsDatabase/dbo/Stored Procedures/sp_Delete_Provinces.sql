Create  Procedure  [dbo].[sp_Delete_Provinces](@s_ID nvarchar(50))
as
	Delete from [LS_Provinces] where [s_ID]=@s_ID