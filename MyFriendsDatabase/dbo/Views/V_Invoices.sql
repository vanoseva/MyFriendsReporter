CREATE View V_Invoices  
as  
SELECT dbo.PR_Invoices.s_ID, dbo.PR_Invoices.PreInvoiceID, dbo.PR_Invoices.Inv_Date, dbo.PR_Invoices.Room_ID, dbo.PR_Invoices.Object_ID,   
       dbo.PR_Invoices.Tax, dbo.PR_Invoices.Total, dbo.PR_Invoices.TotalUSD, dbo.PR_Invoices.Curr, dbo.PR_Invoices.Exchange,   
       dbo.PR_Invoices.Inwords, dbo.PR_Invoices.RedBill, dbo.PR_Invoices.Register_ID, dbo.PR_Invoices.Payment_ID, dbo.PR_Invoices.CaLV,   
       dbo.PR_Invoices.IsDebt, dbo.PR_Invoices.Company, dbo.PR_Invoices.AddressCompary, dbo.PR_Invoices.Tax_Date, dbo.PR_Invoices.Employee_ID,   
       dbo.PR_Invoices.SohieuHD, dbo.PR_Invoices.SoHD, dbo.PR_Invoices.Pay, dbo.PR_Invoices.PerDiscount, dbo.PR_Invoices.AmountDiscount,   
       dbo.PR_Invoices.Note, dbo.PR_Invoices.IDSort, dbo.PR_Invoices.VND, dbo.PR_Invoices.USD, dbo.PR_Invoices.UCreate, dbo.PR_Invoices.dtCreate,   
       dbo.PR_Invoices.UEdit, dbo.PR_Invoices.dtEdit, dbo.PR_Invoices.isSlipt, dbo.PR_Register.IDSort AS RegID, dbo.Ls_Room.Room_ID AS RoomID,   
       dbo.LS_Objects.s_Name AS Fullname, dbo.LS_Objects.s_Object_ID AS ObjectID, dbo.Ls_Shift.s_Name AS TenCa,
	   dbo.PR_Invoices.PayUSD,dbo.Ls_Banks.s_Name as Bank_Name,dbo.PR_Invoices.Bank_ID,dbo.PR_Invoices.CardID,dbo.PR_Invoices.CardSerial
	   ,dbo.PR_Invoices.Partner_ID,dbo.PR_Invoices.PerCard,dbo.PR_Invoices.TransVND ,
	   dbo.PR_Invoices.TransUSD ,dbo.PR_Invoices.ScanCardVND ,dbo.PR_Invoices.ScanCardUSD 
		,dbo.PR_Invoices.DebtVND  ,dbo.PR_Invoices.DebtUSD
FROM   dbo.PR_Invoices   
    JOIN dbo.LS_Objects ON dbo.LS_Objects.s_ID = dbo.PR_Invoices.Object_ID  
    LEFT JOIN dbo.Ls_Shift ON dbo.PR_Invoices.CaLV = dbo.Ls_Shift.s_ID  
    Left join dbo.PR_Register ON dbo.PR_Register.s_ID = dbo.PR_Invoices.Register_ID  
    Left Join dbo.Ls_Room ON dbo.PR_Invoices.Room_ID=dbo.Ls_Room.s_ID
	Left join dbo.Ls_Banks ON dbo.PR_Invoices.Bank_ID=dbo.Ls_Banks.s_ID