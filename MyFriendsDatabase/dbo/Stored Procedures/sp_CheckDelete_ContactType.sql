Create  Procedure  [dbo].[sp_CheckDelete_ContactType](@ID numeric)
as
	Select count(*) as C from [Ls_Contacts] where [i_ContactType_ID]=@ID