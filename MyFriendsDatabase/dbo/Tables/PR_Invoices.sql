CREATE TABLE [dbo].[PR_Invoices] (
    [s_ID]           NVARCHAR (50)  CONSTRAINT [DF__PR_Invoice__s_ID__15B0212B] DEFAULT (newid()) NOT NULL,
    [PreInvoiceID]   NVARCHAR (50)  NULL,
    [Inv_Date]       SMALLDATETIME  NULL,
    [Room_ID]        NVARCHAR (50)  NULL,
    [Object_ID]      NVARCHAR (50)  NULL,
    [Tax]            NVARCHAR (50)  NULL,
    [Total]          MONEY          NULL,
    [TotalUSD]       MONEY          NULL,
    [Curr]           NVARCHAR (50)  NULL,
    [Exchange]       MONEY          NULL,
    [Inwords]        NVARCHAR (100) NULL,
    [RedBill]        BIT            NULL,
    [Register_ID]    NVARCHAR (50)  NULL,
    [Payment_ID]     INT            NULL,
    [CaLV]           NVARCHAR (50)  NULL,
    [IsDebt]         BIT            NULL,
    [Company]        NVARCHAR (255) NULL,
    [AddressCompary] NVARCHAR (255) NULL,
    [Tax_Date]       SMALLDATETIME  NULL,
    [Employee_ID]    NVARCHAR (50)  NULL,
    [SohieuHD]       NVARCHAR (50)  NULL,
    [SoHD]           NVARCHAR (50)  NULL,
    [Pay]            MONEY          NULL,
    [PerDiscount]    FLOAT (53)     NULL,
    [AmountDiscount] MONEY          NULL,
    [Note]           NVARCHAR (255) NULL,
    [IDSort]         NUMERIC (18)   NOT NULL,
    [VND]            MONEY          NULL,
    [USD]            MONEY          NULL,
    [UCreate]        NVARCHAR (50)  NULL,
    [dtCreate]       SMALLDATETIME  NULL,
    [UEdit]          NVARCHAR (50)  NULL,
    [dtEdit]         SMALLDATETIME  NULL,
    [isSlipt]        BIT            CONSTRAINT [DF_PR_Invoices_isSlipt] DEFAULT ((0)) NULL,
    [PayUSD]         MONEY          NULL,
    [Bank_ID]        NVARCHAR (50)  NULL,
    [CardID]         NVARCHAR (50)  NULL,
    [CardSerial]     NVARCHAR (50)  NULL,
    [Partner_ID]     NVARCHAR (50)  NULL,
    [PerCard]        FLOAT (53)     NULL,
    [TransVND]       MONEY          NULL,
    [TransUSD]       MONEY          NULL,
    [ScanCardVND]    MONEY          NULL,
    [ScanCardUSD]    MONEY          NULL,
    [DebtVND]        MONEY          NULL,
    [DebtUSD]        MONEY          NULL,
    [IsCash]         BIT            NULL,
    [IsTrans]        BIT            NULL,
    [IsScan]         BIT            NULL,
    [IsDebtCus]      BIT            NULL,
    [ObjID_VAT]      NVARCHAR (50)  NULL,
    [ObjName_VAT]    NVARCHAR (255) NULL,
    [RoomNo]         NVARCHAR (50)  NULL,
    [RegNew]         NVARCHAR (50)  NULL,
    [TraLai]         BIT            NULL,
    [ShiftNO_ID]     NVARCHAR (50)  NULL,
    CONSTRAINT [PK_PR_Invoices] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Invoices_LS_Objects] FOREIGN KEY ([Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Invoices_Ls_PaymentDebt] FOREIGN KEY ([Payment_ID]) REFERENCES [dbo].[Ls_PaymentDebt] ([i_ID]) ON UPDATE CASCADE
);


GO
CREATE Trigger trg_DelInvOnDBVO ON PR_Invoices
for Delete
as
	Declare @OrderID nvarchar(50)
	Declare CurrIv cursor for Select s_ID from Deleted
	Open CurrIv
	Fetch next from CurrIv into @OrderID
	While @@Fetch_Status=0
	Begin
		Exec sp_DelInvOnDBVO @OrderID
		Fetch next from CurrIv into @OrderID
	End
	Close CurrIv
	Deallocate CurrIv
