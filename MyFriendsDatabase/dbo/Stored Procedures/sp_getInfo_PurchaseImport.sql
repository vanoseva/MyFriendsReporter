
CREATE  Procedure [dbo].[sp_getInfo_PurchaseImport](@s_ID nvarchar(50))
as
SELECT * FROM Ls_PurchaseImports WHERE s_ID=@s_ID
