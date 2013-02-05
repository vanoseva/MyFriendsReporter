create  Procedure [dbo].[sp_getListDetail_PurchaseImport] (@s_ID nvarchar(50))
as
	select * from [PR_PurchaseImportDetails] where s_OrderID=@s_ID
