CREATE View V_RptInvoices            
as            
SELECT iv.s_ID, iv.PreInvoiceID, Isnull(ivc.Inv_Date,iv.Inv_Date) as Inv_Date, iv.Room_ID, iv.Object_ID,               
       iv.Tax, iv.Total, iv.TotalUSD, iv.Curr, iv.Exchange,               
       iv.Inwords, iv.RedBill, iv.Register_ID, iv.Payment_ID, iv.CaLV,               
       iv.IsDebt, iv.Company, iv.AddressCompary, iv.Tax_Date, iv.Employee_ID,               
       iv.SohieuHD, iv.SoHD, iv.Pay, iv.PerDiscount, iv.AmountDiscount,               
       iv.Note, iv.IDSort, iv.VND, iv.USD, iv.UCreate, iv.dtCreate,               
       iv.UEdit, iv.dtEdit, iv.isSlipt, dbo.PR_Register.IDSort AS RegID, dbo.Ls_Room.Room_ID AS RoomID,               
       dbo.LS_Objects.s_Name AS Fullname, dbo.LS_Objects.s_Object_ID AS ObjectID, dbo.Ls_Shift.s_Name AS TenCa,            
    iv.PayUSD,dbo.Ls_Banks.s_Name as Bank_Name,iv.Bank_ID,iv.CardID,iv.CardSerial            
    ,iv.Partner_ID,iv.PerCard,iv.TransVND ,            
    iv.TransUSD ,iv.ScanCardVND ,iv.ScanCardUSD             
  ,iv.DebtVND  ,iv.DebtUSD ,iv.ShiftNO_ID,iv.RoomNO,iv.RegNew    
  , iv.TraLai,rNew.Room_ID as PTTT,cast(0 as int) as iType      
FROM   dbo.PR_Invoices iv
	Left JOIN V_InvChange ivc ON iv.s_ID=ivc.InvoiceChange              
    JOIN dbo.LS_Objects ON dbo.LS_Objects.s_ID = iv.Object_ID              
    LEFT JOIN dbo.Ls_Shift ON iv.CaLV = dbo.Ls_Shift.s_ID              
    Left join dbo.PR_Register ON dbo.PR_Register.s_ID = iv.Register_ID    
    Left join dbo.PR_Register rNew ON rNew.s_ID = iv.RegNew              
    Left Join dbo.Ls_Room ON iv.Room_ID=dbo.Ls_Room.s_ID            
	Left join dbo.Ls_Banks ON iv.Bank_ID=dbo.Ls_Banks.s_ID  
 where isnull(iv.PreInvoiceID,'')=''  
Union all  
 SELECT iv.s_ID, iv.PreInvoiceID, Isnull(ivc.Inv_Date,iv.Inv_Date) as Inv_Date, iv.Room_ID, iv.Object_ID,               
       iv.Tax, iv.Total, iv.TotalUSD, iv.Curr, iv.Exchange,               
       iv.Inwords, iv.RedBill, iv.Register_ID, iv.Payment_ID, iv.CaLV,               
       iv.IsDebt, iv.Company, iv.AddressCompary, iv.Tax_Date, iv.Employee_ID,               
       iv.SohieuHD, iv.SoHD, iv.Pay, iv.PerDiscount, iv.AmountDiscount,               
       iv.Note, iv.IDSort, iv.VND, iv.USD, iv.UCreate, iv.dtCreate,               
       iv.UEdit, iv.dtEdit, iv.isSlipt, dbo.PR_Register.IDSort AS RegID, dbo.Ls_Room.Room_ID AS RoomID,               
       dbo.LS_Objects.s_Name AS Fullname, dbo.LS_Objects.s_Object_ID AS ObjectID, dbo.Ls_Shift.s_Name AS TenCa,            
    iv.PayUSD,dbo.Ls_Banks.s_Name as Bank_Name,iv.Bank_ID,iv.CardID,iv.CardSerial            
    ,iv.Partner_ID,iv.PerCard,iv.TransVND ,            
    iv.TransUSD ,iv.ScanCardVND ,iv.ScanCardUSD             
  ,iv.DebtVND  ,iv.DebtUSD ,iv.ShiftNO_ID,iv.RoomNO,iv.RegNew    
  , iv.TraLai,rNew.Room_ID as PTTT,cast(1 as int) as iType      
FROM   dbo.HisPR_Invoices iv
	Left JOIN V_InvChange ivc ON iv.s_ID=ivc.InvoiceChange              
    JOIN dbo.LS_Objects ON dbo.LS_Objects.s_ID = iv.Object_ID              
    LEFT JOIN dbo.Ls_Shift ON iv.CaLV = dbo.Ls_Shift.s_ID              
    Left join dbo.PR_Register ON dbo.PR_Register.s_ID = iv.Register_ID    
    Left join dbo.PR_Register rNew ON rNew.s_ID = iv.RegNew              
    Left Join dbo.Ls_Room ON iv.Room_ID=dbo.Ls_Room.s_ID            
 Left join dbo.Ls_Banks ON iv.Bank_ID=dbo.Ls_Banks.s_ID  
 where isnull(iv.fromSlipt,0)=1