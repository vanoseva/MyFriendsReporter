Create View V_ResOrder
as
SELECT     dbo.PR_Register.IDSort AS RegID, dbo.LS_Objects.s_Name AS fullname, dbo.LS_Objects.s_Object_ID AS ObjectID, 
                      dbo.Ls_ServiceType.s_Name AS ServicetypeName, dbo.PR_ResOrder.s_ID, dbo.PR_ResOrder.Issue_ID, dbo.PR_ResOrder.PPV, 
                      dbo.PR_ResOrder.Vat, dbo.PR_ResOrder.Curr, dbo.PR_ResOrder.Order_day, dbo.PR_ResOrder.Payment, dbo.PR_ResOrder.Sub_Total, 
                      dbo.PR_ResOrder.MsVat, dbo.PR_ResOrder.Company, dbo.PR_ResOrder.RedBill, dbo.PR_ResOrder.isCheckOut, dbo.PR_ResOrder.Inwords, 
                      dbo.PR_ResOrder.Register_ID, dbo.PR_ResOrder.Employee_ID, dbo.PR_ResOrder.IsBills, dbo.PR_ResOrder.Service_ID, dbo.PR_ResOrder.CaLV, 
                      dbo.PR_ResOrder.SoHD, dbo.PR_ResOrder.SoHieuHD, dbo.PR_ResOrder.UCreate, dbo.PR_ResOrder.dtCreate, dbo.PR_ResOrder.UEdit, 
                      dbo.PR_ResOrder.dtEdit, dbo.PR_ResOrder.IDSort, dbo.PR_ResOrder.f_Exchange, dbo.PR_ResOrder.Note, dbo.PR_ResOrder.isChangeRoom, 
                      dbo.PR_ResOrder.PreOrderID, dbo.PR_ResOrder.TaxTTDB, dbo.PR_ResOrder.TaxOther, dbo.PR_ResOrder.Sub_TotalVAT, dbo.PR_ResOrder.isTax, 
                      dbo.Ls_Issue.s_Name AS Emites, dbo.PR_ResOrder.CardID, dbo.PR_ResOrder.CardSerial
FROM         dbo.PR_ResOrder INNER JOIN
                      dbo.PR_Register ON dbo.PR_ResOrder.Register_ID = dbo.PR_Register.s_ID INNER JOIN
                      dbo.LS_Objects ON dbo.PR_Register.Object_ID = dbo.LS_Objects.s_ID INNER JOIN
                      dbo.Ls_Issue ON dbo.PR_ResOrder.Issue_ID = dbo.Ls_Issue.s_ID LEFT OUTER JOIN
                      dbo.Ls_ServiceType ON dbo.PR_ResOrder.Service_ID = dbo.Ls_ServiceType.i_ID