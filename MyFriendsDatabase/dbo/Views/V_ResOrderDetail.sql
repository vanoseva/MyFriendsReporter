Create View V_ResOrderDetail
as
SELECT     dbo.PR_ResOrderDetail.Order_ID, dbo.PR_ResOrderDetail.Service_ID, dbo.PR_ResOrderDetail.Qty, dbo.PR_ResOrderDetail.Price, 
                      dbo.PR_ResOrderDetail.Curr, dbo.PR_ResOrderDetail.Sub_Total, dbo.PR_ResOrderDetail.s_ID, dbo.PR_ResOrderDetail.IDSort, 
                      dbo.Ls_ServiceType.s_Name AS ServiceTypeName, dbo.PR_ResOrder.Order_day, dbo.PR_ResOrder.isCheckOut, dbo.PR_ResOrder.isChangeRoom, 
                      dbo.Ls_Service.s_Name AS ServiceName, dbo.PR_ResOrder.TaxTTDB, dbo.PR_ResOrder.TaxOther, dbo.PR_ResOrder.isTax, dbo.PR_ResOrder.PPV, 
                      dbo.PR_ResOrder.Vat, dbo.Ls_Service.Unit, dbo.PR_ResOrder.Service_ID AS ServiceType_ID

FROM         dbo.PR_ResOrder INNER JOIN
                      dbo.PR_ResOrderDetail ON dbo.PR_ResOrder.s_ID = dbo.PR_ResOrderDetail.Order_ID INNER JOIN
                      dbo.Ls_Service ON dbo.PR_ResOrderDetail.Service_ID = dbo.Ls_Service.s_ID LEFT OUTER JOIN
                      dbo.Ls_ServiceType ON dbo.PR_ResOrder.Service_ID = dbo.Ls_ServiceType.i_ID