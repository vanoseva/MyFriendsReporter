Create  Procedure  [dbo].[sp_getInfo_ContactType](@ID numeric)
as
	Select * from [LS_ContactType] where [i_ID]=@ID