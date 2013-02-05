CREATE  Procedure  [dbo].[sp_Delete_OtherIncome](@ID as nvarchar(50))
as
	Delete from [LS_OtherIncome] where [i_ID]=@ID