CREATE TABLE [dbo].[PR_ResOrder] (
    [s_ID]         NVARCHAR (50)  CONSTRAINT [DF__PR_ResOrde__s_ID__1C5D1EBA] DEFAULT (newid()) NOT NULL,
    [Issue_ID]     NVARCHAR (50)  NULL,
    [PPV]          FLOAT (53)     NULL,
    [Vat]          FLOAT (53)     NULL,
    [Curr]         NVARCHAR (50)  NULL,
    [Order_day]    SMALLDATETIME  NULL,
    [Payment]      INT            NULL,
    [Sub_Total]    MONEY          NULL,
    [MsVat]        NVARCHAR (50)  NULL,
    [Company]      NVARCHAR (255) NULL,
    [RedBill]      BIT            NOT NULL,
    [isCheckOut]   BIT            CONSTRAINT [DF__PR_ResOrd__isChe__1D5142F3] DEFAULT ((0)) NULL,
    [Inwords]      NVARCHAR (100) NULL,
    [Register_ID]  NVARCHAR (50)  NULL,
    [Employee_ID]  NVARCHAR (50)  NULL,
    [IsBills]      BIT            NULL,
    [Service_ID]   INT            NULL,
    [CaLV]         NVARCHAR (50)  NULL,
    [SoHD]         NVARCHAR (50)  NULL,
    [SoHieuHD]     NVARCHAR (50)  NULL,
    [UCreate]      NVARCHAR (50)  NULL,
    [dtCreate]     SMALLDATETIME  NULL,
    [UEdit]        NVARCHAR (50)  NULL,
    [dtEdit]       SMALLDATETIME  NULL,
    [IDSort]       NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [f_Exchange]   FLOAT (53)     NULL,
    [Note]         NVARCHAR (255) NULL,
    [isChangeRoom] BIT            CONSTRAINT [DF_PR_ResOrder_isChangeRoom] DEFAULT ((0)) NULL,
    [PreOrderID]   NVARCHAR (50)  NULL,
    [TaxTTDB]      FLOAT (53)     NULL,
    [TaxOther]     FLOAT (53)     NULL,
    [Sub_TotalVAT] MONEY          NULL,
    [isTax]        BIT            CONSTRAINT [DF_PR_ResOrder_isTax] DEFAULT ((0)) NULL,
    [CardID]       NVARCHAR (50)  NULL,
    [CardSerial]   NVARCHAR (50)  NULL,
    [f_Discount]   FLOAT (53)     NULL,
    [m_Discount]   MONEY          NULL,
    [Object_Name]  NVARCHAR (255) NULL,
    [Address]      NVARCHAR (255) NULL,
    [Phone]        NVARCHAR (20)  NULL,
    [Fax]          NVARCHAR (20)  NULL,
    [RegOld]       NVARCHAR (50)  NULL,
    [IsFolio]      BIT            NULL,
    [Area_ID]      NVARCHAR (50)  NULL,
    [Origin_ID]    NVARCHAR (50)  NULL,
    CONSTRAINT [PK_PR_ResOrder] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ResOrder_Ls_Issue] FOREIGN KEY ([Issue_ID]) REFERENCES [dbo].[Ls_Issue] ([s_ID]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ResOrder_PR_Register] FOREIGN KEY ([Register_ID]) REFERENCES [dbo].[PR_Register] ([s_ID]) ON UPDATE CASCADE
);


GO
CREATE Trigger trg_DelOrderOnDBVO ON PR_ResOrder  
for Delete  
as  
 Declare @OrderID nvarchar(50)  
 Declare CurrOrd cursor for Select s_ID from Deleted  
 Open CurrOrd  
 Fetch next from CurrOrd into @OrderID  
 While @@Fetch_Status=0  
 Begin  
  Exec sp_DelOrderOnDBVO @OrderID  
  Fetch next from CurrOrd into @OrderID  
 End  
 Close CurrOrd  
 Deallocate CurrOrd  


GO
CREATE Trigger trg_TransOrder2DBVO ON PR_ResOrder
for insert
as
	Declare @OrderID nvarchar(50)
	Declare CurrInputBill cursor for Select s_ID from Inserted where isnull(Register_ID,'')=''
	Open CurrInputBill
	Fetch next from CurrInputBill into @OrderID
	While @@Fetch_Status=0
	Begin
		Exec sp_TransInv2DBVO @OrderID		
		Fetch next from CurrInputBill into @OrderID
	End
	Close CurrInputBill
	Deallocate CurrInputBill

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ty gia ngoai te', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ResOrder', @level2type = N'COLUMN', @level2name = N'f_Exchange';

