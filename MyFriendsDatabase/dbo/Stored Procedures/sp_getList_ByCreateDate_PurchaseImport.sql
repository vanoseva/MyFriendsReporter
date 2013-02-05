CREATE  Procedure [dbo].[sp_getList_ByCreateDate_PurchaseImport](@CreateDate smalldatetime)
as
SELECT * FROM Ls_PurchaseImports WHERE  Datediff(day,dt_CreateDate,@CreateDate)=0