CREATE Procedure sp_Trans2DBVO(@OrderID nvarchar(50))            
as            
 if (Select Count(*) as C from tblConfig where isnull(isConnectAccounting,0)=1)=0            
  return            
            
 if (Select count(*) from master.dbo.sysdatabases where name='DBVO')=0            
  return            
            
 Insert into [DBVO].[dbo].[VOT2007](Voucher,[s_ID],[VoucherDate],[VoucherNo]            
    ,[ObjectID],[WareHouseID],[Description]            
    ,[InventoryID] ,[Quantity],[Notes],[VsoftKey],Area_ID,Area_Name)            
            
 Select o.SoHD, newid() as s_ID, o.Order_Day,o.s_ID,isnull(obj.s_Object_ID,''),isnull(dt.Store_ID,'') as Store_ID,            
 o.Note as Description,dt.Service_ID,dt.Qty,'' as Note,dt.s_ID,isnull(a.Issue_ID,'') as Area_ID,isnull(a.s_Name,'') as Area_Name            
 from              
 PR_ResOrder o JOIN PR_ResOrderDetail dt ON dt.Order_ID=o.s_ID            
 JOIN ls_Service ls ON dt.Service_ID=ls.s_ID            
 Left join PR_Register r On o.Register_ID=r.s_ID            
 Left Join Ls_Objects obj On r.Object_ID=obj.s_ID    
 Left Join Ls_Issue a ON o.Issue_ID=a.s_ID   
          
 Where o.isChangeRoom=0 and dt.s_ID=@OrderID  and isnull(ls.isDoneSend,0)=0          
            
 Insert into [DBVO].[dbo].[VOT2007](Voucher,[s_ID],[VoucherDate],[VoucherNo]            
    ,[ObjectID],[WareHouseID],[Description]            
    ,[InventoryID] ,[Quantity],[Notes],[VsoftKey],Area_ID,Area_Name)            
 Select o.NumberID, newid() as s_ID, o.dayMonth,o.s_ID,isnull(o.ObjectID,''),isnull(dt.Store_ID,'') as Store_ID,            
 o.Note as Description,dt.Product_ID,dt.Qty,'' as Note,dt.s_ID ,  
 isnull(a.Issue_ID,'') as Area_ID,isnull(a.s_Name,'') as Area_Name            
 from              
 LS_ResOrder o JOIN PR_ResOrderDetail_NH dt ON dt.OrderID=o.s_ID            
 JOIN Ls_Products ls On dt.Product_ID=ls.s_ID   
 Left Join Ls_Issue a ON o.noiphathanh=a.s_ID           
 Where dt.s_ID=@OrderID  and isnull(ls.isDoneSend,0)=0        
--cac mat hang fnb ban khong chuyen tiep tan        
Insert into [DBVO].[dbo].VOT2009(VoucherDate,s_ID,NumberID,Description,InventoryID,Quantity,Price,Notes,VsoftKey      
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent      
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)        
        
 Select iv.dayMonth,newid(),dt.OrderID,dt.Product_Name,dt.ProductID,dt.Qty,dt.EndPrice,''as Note,dt.s_ID       
 ,dt.EndPrice*dt.Qty as OriginalAmount,'VND' as CurrencyID,1 as ExchangeRate,    
 dt.EndPrice*dt.Qty as ConvertedAmount,      
 dt.TTDB as SpecialTaxPercent,dt.TTDB_Amount as SpecialAmount,dt.VAT as VATPercent      
 ,dt.VAT_Amount as VATAmount,dt.OtherTax as TaxOtherper,dt.OtherTax_Amount as TaxOtherAmount,    
 dt.PPV as ServicePercent,dt.PPV_Amount as ServicesAmount      
        
 from PR_ResOrderDetail_NH dt,Ls_ResOrder iv,ls_Products ls         
 where dt.OrderID=iv.s_ID and dt.Product_ID=ls.s_ID        
 and iv.Payment<>4         
 and dt.s_ID=@OrderID        
--Cac mat hang phat sinh them        
Insert into [DBVO].[dbo].VOT2009(VoucherDate,s_ID,NumberID,Description,InventoryID,Quantity,Price,Notes,VsoftKey      
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent      
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)        
        
 Select iv.dayMonth,newid(),dt.OrderID,dt.ProName,'',dt.Qty,dt.EndPrice,''as Note,dt.s_ID       
 ,dt.EndPrice*dt.Qty as OriginalAmount,'VND' as CurrencyID,1 as ExchangeRate,    
 dt.EndPrice*dt.Qty as ConvertedAmount,      
 0 as SpecialTaxPercent,0 as SpecialAmount,dt.VAT as VATPercent      
 ,dt.VAT_Amount as VATAmount,0 as TaxOtherper,0 as TaxOtherAmount,    
 dt.PPV as ServicePercent,dt.PPV_Amount as ServicesAmount      
        
 from PR_ResOrderDetail_NH_EXT dt,Ls_ResOrder iv         
where dt.OrderID=iv.s_ID       
 and iv.Payment<>4         
 and dt.s_ID=@OrderID    
    
--Input bill thu tien mat        
Insert into [DBVO].[dbo].VOT2009(VoucherDate,s_ID,NumberID,Description,InventoryID,Quantity,Price,Notes,VsoftKey      
 ,OriginalAmount,CurrencyID,ExchangeRate,ConvertedAmount,SpecialTaxPercent,SpecialAmount,VATPercent      
 ,VATAmount,TaxOtherper,TaxOtherAmount,ServicePercent,ServicesAmount)      
        
        
 Select iv.Order_day,newid(),dt.Order_ID,ls.s_Name,dt.Service_ID,dt.Qty,dt.PriceNoneTax as OriginalAmount,''as Note,dt.s_ID      
 ,dt.Qty*dt.PriceNoneTax as ConvertedAmount,'VND' as CurrencyID,1 as ExchangeRate,dt.Qty*dt.PriceNoneTax,    
 iv.TaxTTDB,dt.AmountTTDB,iv.VAT      
 ,dt.AmountVAT,iv.TaxOther,dt.AmountTaxOther,iv.PPV,dt.AmountPPV   
         
 from PR_ResOrderDetail dt,PR_ResOrder iv,ls_Service ls         
 where dt.Order_ID=iv.s_ID and dt.Service_ID=ls.s_ID        
 and isnull(iv.Register_ID,'')='' and iv.isChangeRoom=0        
 and dt.s_ID=@OrderID