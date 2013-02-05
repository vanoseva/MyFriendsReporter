CREATE View [V_Thekho]
as
  --Dau Ky 
Select
 s_ID as IDDetail,s_ID as ID,'' as NumberID, cast('1900-01-01' as smalldatetime) as DayMonth,cast(0 as numeric) as i_IDSort,
 s_Store_ID as Store_ID,s_Product_ID as Product_ID,m_PriceBegin as Price,f_QuantityBegin as QImport,
 cast(0 as float) as QOrder,'DK' as MaNghiepvu,cast(0 as int) as Ordinal,cast(1 as float) as ExChange ,'Pr_Product_Store' as s_TableName
,N'Đầu kỳ' as Note,'' as Curr,cast(1 as float) as ExCurr
 from Pr_Product_Store ls
Union All
  --Nhap hang                
Select
 dt.s_ID as IDDetail,ls.s_ID as ID,ls.s_Import_ID as NumberID, ls.dt_ImportDate as DayMonth,ls.i_IDSort,
 dt.s_Store_ID as Store_ID,dt.s_Product_ID as Product_ID,dt.m_Price as Price,dt.f_Quantity as QImport,
 cast(0 as float) as QOrder,'NH' as MaNghiepvu,cast(1 as int) as Ordinal,dt.f_Convert as ExChange,'PR_ImportDetail' as s_TableName
,N'Nhập hàng' as Note,ls.Curr,ls.m_Exchange as ExCurr
 from PR_ImportDetail dt,Ls_Imports ls where dt.s_Import_ID=ls.s_ID
--Nhap khac            
Union All
Select
 dt.s_ID as IDDetail,ls.s_ID as ID,ls.s_Import_ID as NumberID, ls.dt_ImportDate as DayMonth,ls.i_IDSort,
 dt.s_Store_ID as Store_ID,dt.s_Product_ID as Product_ID,dt.m_Price as Price,dt.f_Quantity as QImport,
 cast(0 as float) as QOrder,'NK' as MaNghiepvu,cast(2 as int) as Ordinal,dt.f_Convert as ExChange,'PR_ImportDetail_Other' as s_TableName
,N'Nhập khác' as Note,ls.Curr,ls.m_Exchange as ExCurr
 from PR_ImportDetail_Other dt,Ls_Import_Other ls where dt.s_Import_ID=ls.s_ID
--Nhap chuyen kho                  
Union All
Select
 dt.s_ID as IDDetail,ls.s_ID as ID,ls.s_NumberID as NumberID, ls.dt_DayMonth as DayMonth,ls.i_IDSort,
 dt.s_StoreDes as Store_ID,dt.s_Product_ID as Product_ID,dt.m_Price as Price,dt.f_Quantity as QImport,
 cast(0 as float) as QOrder,'NHCK' as MaNghiepvu,cast(5 as int) as Ordinal,dt.f_Exchange as ExChange,'PR_TransDetails' as s_TableName
,N'Nhập chuyển kho' as Note,ls.Curr,ls.Exchange as ExCurr
 from PR_TransDetails dt,LS_Trans ls where dt.s_NumberID=ls.s_ID 
--Xuat tra hang                  
Union All
Select
 dt.s_ID as IDDetail,ls.s_ID as ID,ls.s_Order_ID as NumberID, ls.dt_OrderDate as DayMonth,ls.i_IDSort,
 dt.s_Store_ID as Store_ID,dt.s_Product_ID as Product_ID,dt.m_Price as Price,cast(0 as float) as QImport,
 dt.f_Quantity as QOrder,'XHT' as MaNghiepvu,cast(8 as int) as Ordinal,dt.f_Convert as ExChange,'PR_OrderDetailReturns' as s_TableName
,N'Xuất trả hàng' as Note,ls.Curr,ls.m_Exchange as ExCurr
 from PR_OrderDetailReturns dt,LS_OrderReturns ls where dt.s_Order_ID=ls.s_ID
--Xuat chuyen kho                  
Union All
Select
 dt.s_ID as IDDetail,ls.s_ID as ID,ls.s_NumberID as NumberID, ls.dt_DayMonth as DayMonth,ls.i_IDSort,
 dt.s_StoreSource as Store_ID,dt.s_Product_ID as Product_ID,dt.m_Price as Price,cast(0 as float) as QImport,
 dt.f_Quantity as QOrder,'XHCK' as MaNghiepvu,cast(10 as int) as Ordinal,dt.f_Exchange as ExChange,'PR_TransDetails' as s_TableName
,N'Xuất chuyển kho' as Note,ls.Curr,ls.Exchange as ExCurr
 from PR_TransDetails dt,LS_Trans ls where dt.s_NumberID=ls.s_ID
Union All
--Xuat khac           
Select
 dt.s_ID as IDDetail,ls.s_ID as ID,ls.s_Order_ID as NumberID, ls.dt_OrderDate as DayMonth,ls.i_IDSort,
 dt.s_Store_ID as Store_ID,dt.s_Product_ID as Product_ID,dt.m_Price as Price,cast(0 as float) as QImport,
 dt.f_Quantity as QOrder,'XK' as MaNghiepvu,cast(11 as int) as Ordinal,dt.f_Convert as ExChange,'PR_OrderDetail_Other'  as s_TableName
,N'Xuất khác' as Note,ls.Curr,ls.m_Exchange as ExCurr
 from PR_OrderDetail_Other dt,Ls_Order_Other ls where dt.s_OrderID=ls.s_ID      
--Xuất NVL  
Union All                  
Select                   
 pr2.s_ID as IDDetail,ls.s_ID as ID,ls.NumberID, ls.dayMonth,ls.IDSort as i_IDSort,
 pr2.Store_ID,pr2.Product_ID,pr2.Price,cast(0 as float) as QImport,
 pr2.Qty*pr2.Exchange as QOrder,'XNVL' as MaNghiepvu,cast(13 as int) as Ordinal,cast(1 as float) as ExChange,'pr_ResOrderDetail_NVL' as s_TableName
,N'Xuất nguyên vật liệu' as Note,ls.Curr,ls.Exchange as ExCurr
 from Ls_ResOrder  ls,Pr_ResOrderDetail_NH pr,pr_ResOrderDetail_NVL pr2
where ls.s_ID=pr.OrderID and pr.s_ID=pr2.OrderID_Detail