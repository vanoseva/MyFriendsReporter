CREATE  Procedure  [dbo].[sp_Delete_OtherOutcome](@ID nvarchar(50))--luc dau la numeric
as
	Delete from [LS_OtherOutcome] where [s_ID]=@ID