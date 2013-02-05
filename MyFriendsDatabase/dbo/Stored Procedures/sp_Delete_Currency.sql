
CREATE  Procedure  [dbo].[sp_Delete_Currency](@ID nvarchar(50))
as
	Delete from [LS_Currency] where [i_ID]=@ID