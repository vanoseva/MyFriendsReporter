
CREATE  Procedure [dbo].[sp_isExistOrderID_PurchaseImport] (@s_Order_ID nvarchar(50))
as
SELECT * FROM LS_PurchaseImports WHERE s_Order_ID=@s_Order_ID
