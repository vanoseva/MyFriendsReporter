CREATE View V_InvoiceDetail  
as   
Select isnull(gr.s_Name,st.s_Name) as GroupService_Name, iv.Exchange, o.SoHD,o.SoHieuHD, o.IDSort as OrderID,r.Room_ID as RoomID,    
dt.*,st.s_Name as ServiceTypeName,i.s_Name as IssueName from Pr_InvoiceDetail dt   
join Pr_Invoices iv ON dt.Invoice_ID=iv.s_ID
Left join Pr_ResOrder o ON dt.Order_ID=o.s_ID
Left join Ls_Room r ON dt.Room_ID=r.s_ID
Left join Ls_serviceType st on dt.Services=st.i_ID
Left join Ls_Issue i on dt.Emites=i.s_ID
Left join Ls_ServiceGroup gr On dt.GroupServices=gr.s_ID