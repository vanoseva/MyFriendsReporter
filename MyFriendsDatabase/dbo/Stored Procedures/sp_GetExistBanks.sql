Create Procedure  [dbo].[sp_GetExistBanks](@s_ID nvarchar(50),@Bank_ID nvarchar(50))
as
	if @s_ID<>''
		select * from [LS_Banks] where s_Bank_ID=@Bank_ID and [s_ID]<>@s_ID
	else
		select * from [LS_Banks] where s_Bank_ID=@Bank_ID