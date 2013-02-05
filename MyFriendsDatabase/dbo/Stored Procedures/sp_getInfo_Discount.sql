Create  Procedure  [dbo].[sp_getInfo_Discount](@s_ID nvarchar(50))
as
	Select * from [LS_Discount] where [s_ID]=@s_ID