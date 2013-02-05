Create  Procedure  [dbo].[sp_Delete_Nationalities](@s_ID nvarchar(50))
as
	Delete from [LS_Nationalities] where [s_ID]=@s_ID