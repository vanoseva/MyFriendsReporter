Create Procedure  [dbo].[sp_GetInfoBanks](@s_ID nvarchar(50))
as

	Select * from [LS_Banks] where [s_ID]=@s_ID