Create  Procedure  [dbo].[sp_Delete_Discount](@ID nvarchar(50))
as
	Delete from [LS_Discount] where [s_ID]=@ID