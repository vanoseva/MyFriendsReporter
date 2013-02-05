CREATE Procedure sp_TransInv2DBVO(@InvDetail_ID nvarchar(50))            
as            
 if (Select Count(*) as C from tblConfig where isnull(isConnectAccounting,0)=1)=0            
  return            
            
 if (Select count(*) from master.dbo.sysdatabases where name='DBVO')=0            
  return            
  --Chi tiet Invoice        
 INSERT INTO [DBVO].[dbo].[VOT2008]            
 (TaxDate,SoHD,Invoice,[s_ID],[InvoiceNo],[Serial],[RoomNo]            
 ,[InventoryID],[Description],[ObjectID]            
 ,[ObjectName],[VATObjectID],[VATObjectName]            
 ,[TaxCode],[Address],[OriginalAmount]            
 ,[CurrencyID],[ExchangeRate],[ConvertedAmount]            
 ,[SpecialTaxPercent],[SpecialAmount]            
 ,[VATPercent],[VATAmount],[TaxOtherper]            
 ,[TaxOtherAmount],[ServicePercent]            
 ,[ServicesAmount],[RegisterNo]            
 ,[CIDate],[CODate],[VsoftKey]        
 ,Area_ID,Area_Name,NumberID,OriginNumber      
,ScandCardAmount,SerialCard,TransAmount,Bank_ID,Bank_Name,CashAmount,DebtAmount)            
            
 Select iv.Tax_Date, iv.SoHD, iv.IDSort, Newid() as s_ID,iv.s_ID as [InvoiceNo],iv.SoHieuHD as [Serial],r.[Room_ID]            
 ,isnull(gr.Group_ID,t.ServiceType_ID) as [InventoryID],isnull(gr.s_Name,t.s_Name) as [Description],ls.s_Object_ID as [ObjectID]            
 ,ls.s_Name as [ObjectName],iv.ObjID_VAT as [VATObjectID],iv.ObjName_VAT as [VATObjectName]            
 ,iv.Tax as [TaxCode],ls.s_Address as [Address],dt.TotalVND  as [OriginalAmount]            
 ,'VND' as [CurrencyID],cast(1 as float) as [ExchangeRate],dt.TotalVND  as [ConvertedAmount]            
 ,dt.TaxTTDB as [SpecialTaxPercent],dt.TTDB_Amount as [SpecialAmount]            
 ,dt.VAT as [VATPercent],dt.VAT_Amount as [VATAmount],            
 dt.TaxOther as [TaxOtherper],dt.TaxOther_Amount as [TaxOtherAmount],            
 dt.PPV as [ServicePercent],dt.PPV_Amount as [ServicesAmount],reg.IDSort as [RegisterNo]            
 ,reg.from_Date as [CIDate],iv.Inv_Date as [CODate],dt.s_ID as [VsoftKey]            
 ,a.issue_ID,a.s_Name,dt.s_ID,dt.Origin_InvID        
 ,iv.ScanCardVND,iv.CardSerial,iv.TransVND,isnull(bank.s_Bank_ID,''),isnull(bank.s_Name,''),iv.Pay,iv.DebtVND      
 from PR_InvoiceDetail dt Join PR_Invoices iv ON iv.s_ID=dt.Invoice_ID          
 Left Join PR_Register reg ON dt.Register_ID=reg.s_ID             
 Left Join Ls_Objects ls ON iv.Object_ID=ls.s_ID          
 Left Join LS_Room r ON reg.Room_ID=r.s_ID          
 Left Join Ls_ServiceType t  ON dt.Services=t.i_ID          
 Left Join Ls_ServiceGroup gr  ON dt.GroupServices=gr.s_ID        
 Left Join Ls_Issue a ON dt.Emites=a.s_ID      
 Left join Ls_Banks bank ON iv.Bank_ID=bank.s_ID      
        
 where isnull(iv.isDebt,0)=0             
 and dt.s_ID=@InvDetail_ID            
--Inputbill thu tien mat        
        
Declare @Product_ID nvarchar(50),@Product_Name nvarchar(50)         
Select top 1 @Product_ID=gr.Group_ID,@Product_Name=gr.s_Name from PR_ResOrderDetail dt, Ls_Service ls ,Ls_ServiceGroup gr        
where dt.Service_ID=ls.s_ID and ls.ServiceGroup_ID=gr.s_ID        
and dt.Order_ID=@InvDetail_ID        
Order by dt.IDSort asc        
        
INSERT INTO [DBVO].[dbo].[VOT2008]            
 (TaxDate,SoHD,Invoice,[s_ID],[InvoiceNo],[Serial],[RoomNo]            
 ,[InventoryID],[Description],[ObjectID]            
 ,[ObjectName],[VATObjectID],[VATObjectName]            
 ,[TaxCode],[Address],[OriginalAmount]            
 ,[CurrencyID],[ExchangeRate],[ConvertedAmount]            
 ,[SpecialTaxPercent],[SpecialAmount]            
 ,[VATPercent],[VATAmount],[TaxOtherper]            
 ,[TaxOtherAmount],[ServicePercent]            
 ,[ServicesAmount],[RegisterNo]            
 ,[CIDate],[CODate],[VsoftKey]        
 ,Area_ID,Area_Name,NumberID)          
Select iv.Order_day, iv.SoHD, iv.IDSort, Newid() as s_ID,iv.s_ID as [InvoiceNo],iv.SoHieuHD as [Serial],''            
 ,@Product_ID as [InventoryID],@Product_Name as [Description],        
'' as [ObjectID]            
 ,iv.[Object_Name] as [ObjectName],'' as [VATObjectID],'' as [VATObjectName]            
 ,iv.MsVAT as [TaxCode],iv.Address as [Address],iv.Sub_Total  as [OriginalAmount]            
 ,'VND' as [CurrencyID],cast(1 as float) as [ExchangeRate],iv.Sub_Total  as [ConvertedAmount]            
 ,0 as [SpecialTaxPercent],0 as [SpecialAmount]            
 ,iv.VAT as [VATPercent],iv.Sub_TotalVAT-iv.Sub_Total as [VATAmount],            
 0 as [TaxOtherper],0 as [TaxOtherAmount],            
 0 as [ServicePercent],0 as [ServicesAmount],NULL as [RegisterNo]            
 ,NULL as [CIDate],NULL as [CODate],iv.s_ID as [VsoftKey]            
 ,a.issue_ID,a.s_Name,iv.s_ID        
 from PR_ResOrder iv Left join Ls_Issue a ON iv.issue_ID=a.s_ID        
 where isnull(Register_ID,'')=''        
 And iv.s_ID=@InvDetail_ID        
        
        
--Doanh thu fnb        
 INSERT INTO [DBVO].[dbo].[VOT2008]            
 (TaxDate,SoHD,Invoice,[s_ID],[InvoiceNo],[Serial],[RoomNo]            
 ,[InventoryID],[Description],[ObjectID]            
 ,[ObjectName],[VATObjectID],[VATObjectName]            
 ,[TaxCode],[Address],[OriginalAmount]            
 ,[CurrencyID],[ExchangeRate],[ConvertedAmount]            
 ,[SpecialTaxPercent],[SpecialAmount]            
 ,[VATPercent],[VATAmount],[TaxOtherper]            
 ,[TaxOtherAmount],[ServicePercent]            
 ,[ServicesAmount],[RegisterNo]            
 ,[CIDate],[CODate],[VsoftKey],isDetail        
 ,Area_ID,Area_Name,NumberID      
,ScandCardAmount,SerialCard,TransAmount,Bank_ID,Bank_Name,CashAmount,DebtAmount)            
        
 Select iv.dayMonth, iv.SoHD, '', Newid(),iv.s_ID as [InvoiceNo],iv.SoHieuHD as [Serial],'' as [RoomNo]            
 ,N'P0501' as [InventoryID],N'Restaurant' as [Description],ls.s_Object_ID as [ObjectID]            
 ,isnull(ls.s_Name,iv.ObjectName) as [ObjectName],iv.ObjID_VAT as [VATObjectID],iv.ObjName_VAT as [VATObjectName]            
 ,iv.TaxCode as [TaxCode],ls.s_Address as [Address],iv.TotalNoneTax  as [OriginalAmount]            
 ,'VND' as [CurrencyID],cast(1 as float) as [ExchangeRate],iv.TotalNoneTax  as [ConvertedAmount]            
 ,iv.TaxTTDB as [SpecialTaxPercent],iv.TTDB_Amount as [SpecialAmount]            
 ,iv.VAT as [VATPercent],iv.VAT_Amount as [VATAmount],          
 iv.TaxOther as [TaxOtherper],iv.TaxOther_Amount as [TaxOtherAmount],            
 iv.serv as [ServicePercent],iv.PPV_Amount as [ServicesAmount],NULL as [RegisterNo]            
 ,NULL as [CIDate],NULL as [CODate],iv.s_ID as [VsoftKey],0            
 ,isnull( a.issue_ID,lsr.[ID]) as Area_ID,isnull(a.s_Name,lsr.[Name]) as Area_Name,iv.s_ID      
,iv.MCard,iv.CardSerial,iv.MTransfer,isnull(bank.s_Bank_ID,''),isnull(bank.s_Name,'')    
,iv.MCash,iv.MDebt           
 from Ls_ResOrder iv         
 Left join Ls_Objects ls On iv.ObjectID=ls.s_ID        
 Left Join Ls_Cashier c On iv.Cashier_ID=c.s_ID        
 Left Join Ls_Restaurant lsr On c.Restaurant_ID=lsr.s_ID      
 Left Join Ls_Banks bank ON iv.Bank_ID=bank.s_ID  
 Left join Ls_Issue a ON iv.noiphathanh=a.s_ID       
 where iv.Payment<>4             
 and iv.s_ID=@InvDetail_ID        
---------------BILL KHONG TACH----------------        
--Cac mat hang chuyen tu fnb qua le tan        
Insert into [DBVO].[dbo].VOT2009(VoucherDate,s_ID,NumberID,Description,InventoryID,Quantity,Price,Notes,VsoftKey        
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent        
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)    
        
 Select iv.Order_day,newid() as s_ID,iv.s_ID,dt.Product_Name,dt.ProductID,dt.Qty,dt.EndPrice,''as Note,dt.s_ID         
 ,dt.EndPrice*dt.Qty*res.f_Exchange as OriginalAmount,'VND' as CurrencyID,1 as ExchangeRate,dt.EndPrice*dt.Qty*res.f_Exchange as ConvertedAmount,        
 dt.TTDB as SpecialTaxPercent,dt.TTDB_Amount*res.f_Exchange as SpecialAmount,dt.VAT as VATPercent        
 ,dt.VAT_Amount*res.f_Exchange as VATAmount,dt.OtherTax as TaxOtherper,dt.OtherTax_Amount*res.f_Exchange as TaxOtherAmount,    
dt.PPV as ServicePercent,dt.PPV_Amount*res.f_Exchange as ServicesAmount        
        
 from PR_ResOrderDetail_NH dt,PR_InvoiceDetail iv,PR_ResOrder res,PR_Invoices lsiv,ls_Products ls         
 where isnull(lsiv.isSlipt,0)=0 and isnull(lsiv.isDebt,0)=0 and         
 iv.Invoice_ID=lsiv.s_ID         
 and dt.OrderID=case when isnull(res.Origin_ID,'')<>'' then isnull(res.Origin_ID,'') else res.s_ID end        
 and res.s_ID=iv.Order_ID         
 and dt.Product_ID=ls.s_ID        
 and iv.s_ID=@InvDetail_ID        
--Chi tiet tung dich vu (bia, nuoc ngot...)        
Insert into [DBVO].[dbo].VOT2009(VoucherDate,s_ID,NumberID,Description,InventoryID,Quantity,Price,Notes,VsoftKey        
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent        
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)        
        
 Select iv.Order_day,newid(),iv.s_ID,ls.s_Name,ls.Service_ID,dt.Qty,dt.PriceNoneTax*o.f_Exchange as Price,''as Note,dt.s_ID        
 ,dt.Qty*dt.PriceNoneTax*o.f_Exchange as OriginalAmount,'VND' as CurrencyID,1 as ExchangeRate,dt.Qty*dt.PriceNoneTax*o.f_Exchange,o.TaxTTDB,dt.AmountTTDB*o.f_Exchange,o.VAT        
 ,dt.AmountVAT*o.f_Exchange,o.TaxOther,dt.AmountTaxOther*o.f_Exchange,o.PPV,dt.AmountPPV*o.f_Exchange        
         
 from PR_ResOrderDetail dt,PR_InvoiceDetail iv,PR_Invoices lsiv,ls_Service ls ,PR_ResOrder o        
 where isnull(lsiv.isSlipt,0)=0 and isnull(lsiv.isDebt,0)=0 and iv.Invoice_ID=lsiv.s_ID and dt.Order_ID=o.s_ID        
 and dt.Order_ID=iv.Order_ID and dt.Service_ID=ls.s_ID        
 and iv.s_ID=@InvDetail_ID         
--Cac dich vu khong co detail        
Insert into [DBVO].[dbo].VOT2009(VoucherDate,s_ID,NumberID,Description,InventoryID,Quantity,Price,Notes,VsoftKey        
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent        
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)        
        
 Select iv.Order_day,newid(),iv.s_ID,isnull(gr.s_Name,ls.s_Name),isnull(gr.Group_ID,ls.ServiceType_ID),1,iv.TotalVND,''as Note,iv.s_ID         
 ,iv.TotalVND,'VND',1,iv.TotalVND,iv.TaxTTDB,iv.TTDB_Amount,iv.VAT        
 ,iv.VAT_Amount,iv.TaxOther,TaxOther_Amount,iv.PPV,iv.PPV_Amount        
        
 from PR_InvoiceDetail iv        
 Join PR_Invoices lsiv On iv.Invoice_ID=lsiv.s_ID        
 Left Join Ls_ServiceGroup gr ON iv.GroupServices=gr.s_ID        
 Left Join Ls_ServiceType ls On iv.services=ls.i_ID        
 where isnull(lsiv.isSlipt,0)=0 and isnull(lsiv.isDebt,0)=0 and isnull(iv.Order_ID,'')=''        
 and iv.s_ID=@InvDetail_ID        
-------------BILL SLIPT------------------------        
        
if (Select count(*) from [DBVO].[dbo].VOT2010 where VsoftKey=@InvDetail_ID)=0        
Begin         
        
 --Cac dich vu hang hoa cua nha hang        
 Insert into [DBVO].[dbo].VOT2010(VoucherDate,s_ID,NumberID,Description,InventoryID,        
 Quantity,Price,Notes,VsoftKey        
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent        
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)        
        
 Select iv.Order_day,newid(),iv.Origin_InvID,dt.Product_Name,dt.ProductID,        
 dt.Qty,dt.EndPrice*res.f_Exchange as Price,''as Note,iv.s_ID        
 ,dt.EndPrice*dt.Qty*res.f_Exchange as OriginalAmount,'VND' as CurrencyID,1 as ExchangeRate,dt.EndPrice*dt.Qty*res.f_Exchange as ConvertedAmount,        
 dt.TTDB as SpecialTaxPercent,dt.TTDB_Amount*res.f_Exchange as SpecialAmount,dt.VAT as VATPercent        
 ,dt.VAT_Amount*res.f_Exchange as VATAmount,OtherTax as TaxOtherper,OtherTax_Amount*res.f_Exchange as TaxOtherAmount,dt.PPV as ServicePercent    
,dt.PPV_Amount*res.f_Exchange as ServicesAmount        
         
 from PR_ResOrderDetail_NH dt,PR_InvoiceDetail iv,PR_ResOrder res,PR_Invoices lsiv,ls_Products ls          
 where isnull(lsiv.isSlipt,0)=1 and isnull(lsiv.isDebt,0)=0         
 and dt.OrderID=case when isnull(res.Origin_ID,'')<>'' then isnull(res.Origin_ID,'') else res.s_ID end        
 and res.s_ID=iv.Order_ID         
 and iv.Invoice_ID=lsiv.s_ID and dt.Product_ID=ls.s_ID        
 and iv.s_ID=@InvDetail_ID         
 and isnull(iv.Origin_InvID,'')<>''        
        
 --Chi tiet tung dich vu (bia, nuoc ngot...)        
 Insert into [DBVO].[dbo].VOT2010(VoucherDate,s_ID,NumberID,Description,InventoryID,        
 Quantity,Price,Notes,VsoftKey        
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent        
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)        
        
 Select iv.Order_day,newid(),iv.Origin_InvID,ls.s_Name,ls.Service_ID,        
 dt.Qty,dt.PriceNoneTax*o.f_Exchange as Price,''as Note,iv.s_ID         
 ,dt.Qty*dt.PriceNoneTax*o.f_Exchange as OriginalAmount,'VND' as CurrencyID,1 as ExchangeRate,dt.Qty*dt.PriceNoneTax*o.f_Exchange as AmountConverted    
 ,o.TaxTTDB,dt.AmountTTDB*o.f_Exchange,o.VAT        
 ,dt.AmountVAT*o.f_Exchange,o.TaxOther,dt.AmountTaxOther*o.f_Exchange,o.PPV,dt.AmountPPV*o.f_Exchange      
        
 from PR_ResOrderDetail dt,PR_InvoiceDetail iv,PR_Invoices lsiv,ls_Service ls ,PR_ResOrder o        
 where isnull(lsiv.isSlipt,0)=1 and isnull(lsiv.isDebt,0)=0 and iv.Invoice_ID=lsiv.s_ID         
 and dt.Order_ID=iv.Order_ID and dt.Service_ID=ls.s_ID and dt.Order_ID=o.s_ID        
 and iv.s_ID=@InvDetail_ID        
 and isnull(iv.Origin_InvID,'')<>''        
 --Cac dich vu khong co detail        
 Insert into [DBVO].[dbo].VOT2010(VoucherDate,s_ID,NumberID,Description,InventoryID,        
 Quantity,Price,Notes,VsoftKey        
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent        
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)        
        
 Select iv.Order_day,newid(),iv.Origin_InvID,isnull(gr.s_Name,ls.s_Name),isnull(gr.Group_ID,ls.ServiceType_ID),        
 1,iv.Sub_TotalVND,''as Note,iv.s_ID        
 ,iv.TotalVND,'VND',1,iv.TotalVND,iv.TaxTTDB,iv.TTDB_Amount,iv.VAT        
 ,iv.VAT_Amount,iv.TaxOther,TaxOther_Amount,iv.PPV,iv.PPV_Amount        
         
 from PR_InvoiceDetail iv        
 Join PR_Invoices lsiv On iv.Invoice_ID=lsiv.s_ID        
 Left Join Ls_ServiceGroup gr ON iv.GroupServices=gr.s_ID        
    Left Join Ls_ServiceType ls On iv.services=ls.i_ID        
 where isnull(lsiv.isSlipt,0)=1 and isnull(lsiv.isDebt,0)=0 and isnull(iv.Order_ID,'')=''        
 and iv.s_ID=@InvDetail_ID        
 and isnull(iv.Origin_InvID,'')<>''        
End