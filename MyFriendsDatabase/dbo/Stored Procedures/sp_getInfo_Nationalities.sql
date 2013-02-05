Create  Procedure  [dbo].[sp_getInfo_Nationalities](@s_ID nvarchar(50))
as
	Select * from [LS_Nationalities] where [s_ID]=@s_ID