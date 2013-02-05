Create  Procedure [dbo].[sp_getList_FromToDate_Quote] (@fromDate smalldatetime,@toDate smalldatetime)
as
	SELECT Q.*, TenKH=O.s_Name, TenNV=E.s_Name 
         FROM LS_Quote Q JOIN Ls_Objects O ON Q.s_Object_ID=O.s_ID
         JOIN LS_Employees E ON Q.s_Employee_ID=E.s_ID 
         WHERE DATEDIFF(day,Q.dt_CreateDate,@fromDate)<=0 and DATEDIFF(day,Q.dt_CreateDate,@toDate)>=0 
         ORDER BY Q.dt_CreateDate desc