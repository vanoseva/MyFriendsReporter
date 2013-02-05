Create  Procedure  [dbo].[sp_CheckDelete_Provinces](@s_ID nvarchar(50))
as
	Select count(*) as C from [LS_Districts] where [s_Province_ID]=@s_ID