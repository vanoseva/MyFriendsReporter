
CREATE  Procedure [dbo].[sp_CheckDuplicate_PurchaseImport] (@s_ID nvarchar(50))
as
SELECT * FROM LS_PurchaseImports WHERE s_ID=@s_ID
