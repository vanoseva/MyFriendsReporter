CREATE  Procedure [dbo].[sp_getList_FromToDate_PurchaseImport] (@fromDate smalldatetime,@toDate smalldatetime)
as
SELECT p.*, TenNCC=O.s_Name, TenLienHeNCC=c.s_Name, TenNV=E.s_Name, ThanhToan=pay.s_Name
         FROM LS_PurchaseImports p JOIN Ls_Objects O ON p.s_Object_ID=o.s_ID
			JOIN LS_Contacts c ON p.s_ContactID=c.s_ID
         JOIN LS_Employees e ON p.s_EmployeeID=e.s_ID 
			JOIN LS_PaymentTerm pay ON p.PaymentTermID=pay.s_ID 
         WHERE DATEDIFF(day,p.dt_CreateDate,@fromDate)<=0 and DATEDIFF(day,p.dt_CreateDate,@toDate)>=0 
         ORDER BY p.dt_CreateDate desc