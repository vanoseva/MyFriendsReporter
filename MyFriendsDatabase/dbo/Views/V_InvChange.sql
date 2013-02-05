Create View V_InvChange
as
	Select Distinct i.Inv_Date,dt.InvoiceChange from PR_Invoices i, PR_InvoiceDetail dt 
	where i.s_ID=dt.Invoice_ID AND isnull(dt.InvoiceChange,'')<>''