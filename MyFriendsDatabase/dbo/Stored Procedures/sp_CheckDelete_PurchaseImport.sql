create Procedure [dbo].[sp_CheckDelete_PurchaseImport](@s_ID nvarchar(50))
as
	select count(*) as c from [LS_Imports]
	where s_purchase_ID=@s_ID