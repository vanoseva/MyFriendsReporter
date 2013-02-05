Create  Procedure  [dbo].[sp_Delete_ContactType](@ID numeric)
as
	Delete from [LS_ContactType] where [i_ID]=@ID