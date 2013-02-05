Create  Procedure  [dbo].[sp_CheckDelete_Nationalities](@s_ID nvarchar(50))
as
	Select count(*) as C from [LS_Provinces] where [s_Nation_ID]=@s_ID