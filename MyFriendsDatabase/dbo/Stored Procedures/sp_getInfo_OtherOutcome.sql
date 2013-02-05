CREATE Procedure [dbo].[sp_getInfo_OtherOutcome](@s_ID nvarchar(50))
as
	Select * from LS_OtherOutcome where s_ID=@s_ID