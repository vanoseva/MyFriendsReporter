CREATE  Procedure  [dbo].[sp_getInfo_OtherIncome](@i_ID as nvarchar(50))
as
	Select * from [LS_OtherIncome] where [i_ID]=@i_ID