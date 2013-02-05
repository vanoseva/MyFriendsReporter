



CREATE  Procedure [dbo].[sp_getInfo_Income] (@s_ID nvarchar(50))
as
	Select * from V_Income where [s_ID]=@s_ID



