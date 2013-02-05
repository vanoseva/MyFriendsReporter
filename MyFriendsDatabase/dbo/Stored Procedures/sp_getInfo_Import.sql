Create   Procedure [dbo].[sp_getInfo_Import](@s_ID nvarchar(50))
as
	Select * from ls_Imports where s_ID=@s_ID