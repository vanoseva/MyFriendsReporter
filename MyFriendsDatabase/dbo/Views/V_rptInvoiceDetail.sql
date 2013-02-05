CREATE View V_rptInvoiceDetail    
as     
Select isnull(gr.s_Name,st.s_Name) as GroupService_Name, iv.Exchange, o.SoHD,o.SoHieuHD, o.IDSort as OrderID,
r.Room_ID as RoomID, st.s_Name as ServiceTypeName,i.s_Name as IssueName,
dt.[s_ID],dt.[Invoice_ID],dt.[Order_ID],dt.[Services],dt.[Emites],dt.[Order_day],dt.[Sub_Total],dt.[Total]
,dt.[Curr],dt.[PPV],dt.[VAT],dt.[TaxTTDB],dt.[TaxOther],dt.[Room_id],dt.[FromDate],dt.[ToDate]
,dt.[NumDay],dt.[Price],dt.[Discount],dt.[DiscountUSD],dt.[Ext],dt.[InvoiceChange]
,dt.[TotalUSD],dt.[TotalVND],dt.[PriceUSD],dt.[ExtraUSD],dt.[Note],dt.[IDSort],dt.[Register_ID]
,dt.[isTax],dt.[Sub_TotalVND],dt.[Sub_TotalUSD],dt.[VAT_Amount],dt.[TTDB_Amount]
,dt.[PPV_Amount],dt.[TaxOther_Amount],dt.[GroupServices],dt.[Origin_InvID],dt.[Sub_TotalOrigin],dt.[SelectPrint]
 from Pr_InvoiceDetail dt     
 join Pr_Invoices iv ON dt.Invoice_ID=iv.s_ID    
 Left join Pr_ResOrder o ON dt.Order_ID=o.s_ID    
 Left join Ls_Room r ON dt.Room_ID=r.s_ID    
 Left join Ls_serviceType st on dt.Services=st.i_ID    
 Left join Ls_Issue i on dt.Emites=i.s_ID  
 Left join Ls_ServiceGroup gr On dt.GroupServices=gr.s_ID
 where isnull(iv.PreInvoiceID,'')=''
Union All

 Select isnull(gr.s_Name,st.s_Name) as GroupService_Name, iv.Exchange, o.SoHD,o.SoHieuHD, o.IDSort as OrderID,
 r.Room_ID as RoomID,st.s_Name as ServiceTypeName,i.s_Name as IssueName,   
 dt.[s_ID],dt.[Invoice_ID],dt.[Order_ID],dt.[Services],dt.[Emites],dt.[Order_day],dt.[Sub_Total],dt.[Total]
,dt.[Curr],dt.[PPV],dt.[VAT],dt.[TaxTTDB],dt.[TaxOther],dt.[Room_id],dt.[FromDate],dt.[ToDate]
,dt.[NumDay],dt.[Price],dt.[Discount],dt.[DiscountUSD],dt.[Ext],dt.[InvoiceChange]
,dt.[TotalUSD],dt.[TotalVND],dt.[PriceUSD],dt.[ExtraUSD],dt.[Note],dt.[IDSort],dt.[Register_ID]
,dt.[isTax],dt.[Sub_TotalVND],dt.[Sub_TotalUSD],dt.[VAT_Amount],dt.[TTDB_Amount]
,dt.[PPV_Amount],dt.[TaxOther_Amount],dt.[GroupServices],dt.[Origin_InvID],dt.[Sub_TotalOrigin],dt.[SelectPrint]
  from HisPr_InvoiceDetail dt       
         join HisPr_Invoices iv ON dt.Invoice_ID=iv.s_ID      
         Left join Pr_ResOrder o ON dt.Order_ID=o.s_ID      
         Left join Ls_Room r ON dt.Room_ID=r.s_ID      
         Left join Ls_serviceType st on dt.Services=st.i_ID      
         Left join Ls_Issue i on dt.Emites=i.s_ID    
   Left join Ls_ServiceGroup gr On dt.GroupServices=gr.s_ID
 where	isnull(iv.fromSlipt,0)=1