

CREATE Procedure [dbo].[sp_CreateOrders](@sDate nvarchar(50))  
as  
 Declare @sql nvarchar(4000),@tblName nvarchar(100),@tname nvarchar(100),@sInd nvarchar(50),  
 @iMonth int,@sYear nvarchar(10),  
 @fromDate nvarchar(50),@toDate nvarchar(50)  
 set @iMonth=Month(@sDate)  
 set @sYear=ltrim(rtrim(str(Year(@sDate))))  
 set @sInd=case when @iMonth<=3 then  
   '1'  
   when @iMonth>3 and @iMonth<=6 then   
   '2'  
   when @iMonth>6 and @iMonth<=9 then   
   '3'  
   else  
   '4'  
   end  
  
 if @sInd='1'   
 Begin  
  set @fromDate=@sYear + '-1-1'  
  set @toDate=@sYear + '-3-31'  
 end  
 else if @sInd='2'   
 Begin  
  set @fromDate=@sYear + '-4-1'  
  set @toDate=@sYear + '-6-30'  
 end  
 else if @sInd='3'   
 Begin  
  set @fromDate=@sYear + '-7-1'  
  set @toDate=@sYear + '-9-30'  
 end  
 else  
 Begin  
  set @fromDate=@sYear + '-10-1'  
  set @toDate=@sYear + '-12-31'  
 end  
  
 set @sInd=@sYear +'_' + @sInd  
   
 set @tblName='Ls_Orders_' + ltrim(rtrim(@sInd))  
 set @tname='Ls_Orders_' + ltrim(rtrim(@sInd))  
   
 if (Select count(*) from sysobjects where xtype='U' and [name]=@tblName)=0  
 Begin  --05.06.09:thêm [m_Commission] [money] DEFAULT ((0)),
  set @sql='CREATE  TABLE ['+@tblName+']('  
  set @sql=@sql +'[s_ID] [nvarchar](50) NOT NULL DEFAULT (newid()),[s_Order_ID] [nvarchar](50) ,'  
  set @sql=@sql +'[s_Char] [nvarchar](50), [i_ItemID] [nvarchar](50),[dt_OrderDate] [smalldatetime] ,'  
  set @sql=@sql +'[s_EmployeeID] [nvarchar](50), [s_ObjectID] [nvarchar](50),'  
  set @sql=@sql +'[s_DeliverableAddresss] [nvarchar](500), [s_PayabbleAddress] [nvarchar](500), '  
  set @sql=@sql +'[s_ContactID] [nvarchar](50), [m_Ordertotal] [money] DEFAULT ((0)), '  
  set @sql=@sql +'[s_Note] [nvarchar](4000), [f_VAT] [float]  DEFAULT ((0)), '  
  set @sql=@sql +'[m_VAT] [money] DEFAULT ((0)), [f_Discount] [float]   DEFAULT ((0)),'  
  set @sql=@sql +'[m_OrderTotalDiscount] [money] DEFAULT ((0)), [f_Per] [float]  DEFAULT ((0)),'  
  set @sql=@sql +'[m_Per] [money] DEFAULT ((0)), [i_IDSort] [numeric](18, 0) IDENTITY(1,1) NOT NULL,'  
  set @sql=@sql +'[s_Word] [nvarchar](500),[s_GroupProduct] [nvarchar](3000),'  
  set @sql=@sql +'[s_FullOrderDate] [nvarchar](50) DEFAULT (getdate()),[s_SymbolInvoice] [nvarchar](50),'  
  set @sql=@sql +'[s_Invoice] [nvarchar](50) ,[m_Exchange] [money] DEFAULT ((0)),'  
  set @sql=@sql +'[s_PurchaseID] [nvarchar](50),[s_Quote_ID] [nvarchar](50),'  
  set @sql=@sql +'[b_isDiscount] [bit] DEFAULT((0)), [b_isDiscountProduct] [bit] DEFAULT((0)), '  
  set @sql=@sql +'[i_TermID] [nvarchar](50), [s_Creator] [nvarchar](50), [s_Editor] [nvarchar](50), '  
  set @sql=@sql +'[dt_Create] [smalldatetime], [dt_Edit] [smalldatetime], '  
  set @sql=@sql +'[f_Commission] [float] DEFAULT((0)),[m_Commission] [money] DEFAULT ((0)), [b_isDept] [bit] DEFAULT((0)), '  
  set @sql=@sql +'[b_isCash] [bit] DEFAULT((0)), [b_isCashAll] [bit] DEFAULT((0)), '  
  set @sql=@sql +'[b_isCashPart] [bit] DEFAULT((0)), [b_isCashPrepay] [bit] DEFAULT((0)), '  
  set @sql=@sql +'[m_Cash] [money] DEFAULT((0)) Primary key ([s_ID]) )'  
  exec sp_executesql @sql  
  set @sql='ALTER TABLE ['+@tblName+']  WITH CHECK ADD  CONSTRAINT [FK_'+@tblName+'_LS_Objects] FOREIGN KEY([s_ObjectID])'  
  set @sql =@sql +' REFERENCES [LS_Objects] ([s_ID])ON UPDATE CASCADE ON DELETE CASCADE'  
  exec sp_executesql @sql

 End  
  
 set @tblName='PR_OrderDetails_' + ltrim(rtrim(@sInd))  
 if (Select count(*) from sysobjects where xtype='U' and [name]=@tblName)=0  
 Begin  
  set @sql='CREATE TABLE ['+@tblName+']('   
  set @sql=@sql +'[s_ID] [nvarchar](50) DEFAULT (newid()),[s_OrderID] [nvarchar](50) ,'  
  set @sql=@sql +'[s_Product_ID] [nvarchar](50) ,[f_Quantity] [float]  DEFAULT ((0)),'  
  set @sql=@sql +'[m_Price] [money]  DEFAULT ((0)),[f_Discount] [float]   DEFAULT ((0)),'  
  set @sql=@sql +'[m_Discount] [money]   DEFAULT ((0)),[f_VAT] [float]   DEFAULT ((0)),'  
  set @sql=@sql +'[s_Store_ID] [nvarchar](50),[s_Unit] [nvarchar](50) ,[f_Convert] [float] DEFAULT ((0)),'  
  set @sql=@sql +'[s_Note] nvarchar(1024),[b_isPromotion] [bit] DEFAULT ((0)),[b_isFix] [bit] DEFAULT ((0)),i_Ordinal numeric identity(1,1),s_Purchase_ID nvarchar(50) Primary key ([s_ID]))'  
  exec sp_executesql @sql  
  
  set @sql='ALTER TABLE ['+@tblName+']  WITH CHECK ADD  CONSTRAINT [FK_'+@tblName+'_LS_Orders] FOREIGN KEY([s_OrderID])'  
  set @sql =@sql +' REFERENCES ['+@tname+'] ([s_ID])ON UPDATE CASCADE ON DELETE CASCADE'  
  exec sp_executesql @sql  
 End  
  
 set @tblName='PR_OrderDetail_Fix_' + ltrim(rtrim(@sInd))  
 set @tname='PR_OrderDetails_' + ltrim(rtrim(@sInd))  
  
 if (Select count(*) from sysobjects where xtype='U' and [name]=@tblName)=0  
 Begin  
  set @sql='CREATE TABLE ['+@tblName+']('   
  set @sql=@sql +'[s_ID] [nvarchar](50)  DEFAULT (newid()),[s_OrdDetail_ID] [nvarchar](50),'  
  set @sql=@sql +'[s_Import_ID] [nvarchar](50) ,[Case_ID] [nvarchar](50) ,[f_Quantity] [float]  DEFAULT ((0)),'  
  set @sql=@sql +'[m_Price] money,[i_IDSort] [numeric](18, 0) IDENTITY(1,1) NOT NULL Primary key ([s_ID]) )'    
  exec sp_executesql @sql  
  
  set @sql='ALTER TABLE ['+@tblName+']  WITH CHECK ADD  CONSTRAINT [FK_PR_'+@tblName+'_PR_OrderDetails] FOREIGN KEY([s_OrdDetail_ID])'  
  set @sql =@sql +' REFERENCES ['+@tname+'] ([s_ID])ON UPDATE CASCADE ON DELETE CASCADE'  
  exec sp_executesql @sql  
 End  
  
 if (Select count(*) from tblIndexOrders where [s_Ind]=@sInd)=0  
  Insert into tblIndexOrders(s_Ind,dt_fromDate,dt_toDate) values(@sInd,@fromDate,@toDate)  

