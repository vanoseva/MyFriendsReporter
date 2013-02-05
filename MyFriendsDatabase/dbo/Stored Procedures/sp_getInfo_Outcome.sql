CREATE Procedure [dbo].[sp_getInfo_Outcome] (@s_ID nvarchar(50))
as
	Select * from LS_Outcome where [s_ID]=@s_ID