CREATE  Procedure  [dbo].[sp_getInfo_Currency](@ID nvarchar(50))
as
	Select * from [LS_Currency] where [i_ID]=@ID