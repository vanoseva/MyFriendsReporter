CREATE Procedure [dbo].[sp_getListProduct_PR_PurchaseOrderDetails](@OrderID nvarchar(50)) 
as	
	SELECT q.s_ID, s_Order_ID=q.s_OrderID, q.s_Product_ID, s_Unit=ISNULL(pro.s_Unit,lspro.s_Unit) 
         , f_Exchange=q.f_Convert, q.f_Quantity, q.m_Price, q.f_Discount, q.m_Discount, i_IDSort=q.i_Ordinal, q.s_Note, q.f_VAT 
         ,ProTotal=(q.f_Quantity * q.m_Price) - q.m_Discount - ((q.f_Quantity * q.m_Price) * q.f_Discount /100) 
         ,ProductName=p.s_Name 
         ,ProductID=p.s_Product_ID 
         ,OriginalPrice=q.m_Price/q.f_Convert
         FROM PR_PurchaseOrderDetails q JOIN Ls_Products p ON q.s_Product_ID=p.s_ID 
         LEFT JOIN Pr_Product_Units pro ON q.s_Unit=pro.s_ID 
         LEFT JOIN Ls_Products lspro ON q.s_Product_ID=lspro.s_ID 
         WHERE q.s_OrderID=@OrderID Order by q.i_Ordinal