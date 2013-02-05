

CREATE  Procedure [dbo].[sp_Delete_PurchaseImportDetail] (@OrderID nvarchar(50))
as
	DELETE FROM PR_PurchaseImportDetails WHERE s_OrderID=@OrderID
	

