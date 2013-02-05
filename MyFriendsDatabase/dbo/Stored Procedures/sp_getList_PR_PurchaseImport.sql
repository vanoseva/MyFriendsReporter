CREATE Procedure [dbo].[sp_getList_PR_PurchaseImport](@OrderID nvarchar(50))   
as  
SELECT p.s_ID, p.s_OrderID, p.s_Product_ID  
, p.f_Convert, p.f_Quantity, p.f_QuantityReceive, p.m_Price, p.f_Discount, p.m_Discount, p.i_IDSort, p.s_Note, p.f_Tax  
, s_Unit=IsNull(proUnit.s_Unit,lsPro.s_Unit)  
, ProTotal=(p.f_Quantity * p.m_Price) - p.m_Discount - ((p.f_Quantity * p.m_Price) * p.f_Discount / 100)  
, ProductName=pro.s_Name  
, ProductID=pro.s_Product_ID  
, OriginalPrice=p.m_Price/p.f_Convert,p.s_Store_ID  
FROM PR_PurchaseImportDetails p JOIN Ls_Products pro ON p.s_Product_ID=pro.s_ID  
LEFT JOIN Pr_Product_Units proUnit ON p.s_Unit=proUnit.s_ID  
LEFT JOIN Ls_Products lsPro ON p.s_Product_ID=lsPro.s_ID  
WHERE s_OrderID=@OrderID   
Order by i_IDSort  