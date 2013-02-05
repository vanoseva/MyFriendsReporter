

CREATE  Procedure [dbo].[sp_DELETE_PurchaseImport] (@s_ID nvarchar(50))
as
	DELETE FROM PR_PurchaseImportDetails WHERE s_OrderID=@s_ID
	DELETE FROM LS_PurchaseImports WHERE s_ID=@s_ID

