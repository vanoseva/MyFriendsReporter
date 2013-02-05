CREATE TABLE [dbo].[Ls_ResOrder] (
    [s_ID]               NVARCHAR (50)  CONSTRAINT [DF_Ls_ResOrder_s_ID] DEFAULT (newid()) NOT NULL,
    [NumberID]           NVARCHAR (50)  NULL,
    [dayMonth]           SMALLDATETIME  NULL,
    [ObjectID]           NVARCHAR (50)  NULL,
    [ObjectName]         NVARCHAR (255) NULL,
    [Address]            NVARCHAR (255) NULL,
    [Company]            NVARCHAR (255) NULL,
    [ComAddress]         NVARCHAR (255) NULL,
    [Phone]              NVARCHAR (50)  NULL,
    [Fax]                NVARCHAR (50)  NULL,
    [TaxCode]            NVARCHAR (50)  NULL,
    [VAT]                FLOAT (53)     NULL,
    [TaxTTDB]            FLOAT (53)     NULL,
    [TaxOther]           FLOAT (53)     NULL,
    [Serv]               FLOAT (53)     NULL,
    [PerDiscount]        FLOAT (53)     NULL,
    [MoneyDiscount]      MONEY          NULL,
    [Payment]            INT            NULL,
    [Register_ID]        NVARCHAR (50)  NULL,
    [Curr]               NVARCHAR (50)  CONSTRAINT [DF_Ls_ResOrder_Curr] DEFAULT (N'VND') NULL,
    [Exchange]           FLOAT (53)     NULL,
    [Table_ID]           NVARCHAR (50)  NULL,
    [Sub_TotalVND]       MONEY          NULL,
    [Sub_TotalUSD]       MONEY          NULL,
    [Sub_TotalTaxVND]    MONEY          NULL,
    [Sub_TotalTaxUSD]    MONEY          NULL,
    [Inwords]            NVARCHAR (255) NULL,
    [Note]               NVARCHAR (255) NULL,
    [IDSort]             NUMERIC (18)   NULL,
    [Issue_ID]           NVARCHAR (50)  NULL,
    [Employee_ID]        NVARCHAR (50)  NULL,
    [VIP]                BIT            CONSTRAINT [DF_Ls_ResOrder_VIP] DEFAULT ((0)) NULL,
    [PerVIP]             FLOAT (53)     NULL,
    [Free]               BIT            CONSTRAINT [DF_Ls_ResOrder_Free] DEFAULT ((0)) NULL,
    [SoHD]               NVARCHAR (50)  NULL,
    [SohieuHD]           NVARCHAR (50)  NULL,
    [TypeCard]           NVARCHAR (50)  NULL,
    [CardSerial]         NVARCHAR (50)  NULL,
    [Deposit_ID]         NVARCHAR (50)  NULL,
    [Deposit]            MONEY          NULL,
    [OrderID_Res]        NVARCHAR (50)  NULL,
    [NumPers]            INT            NULL,
    [dtCreate]           SMALLDATETIME  NULL,
    [dtEdit]             SMALLDATETIME  NULL,
    [UCreate]            NVARCHAR (50)  NULL,
    [UEdit]              NVARCHAR (50)  NULL,
    [Cashier_ID]         NVARCHAR (50)  NULL,
    [Shift_ID]           NVARCHAR (50)  NULL,
    [isDebt]             BIT            NULL,
    [ObjID_VAT]          NVARCHAR (50)  NULL,
    [ObjName_VAT]        NVARCHAR (255) NULL,
    [RoomNo]             NVARCHAR (50)  NULL,
    [VAT_Amount]         MONEY          NULL,
    [TTDB_Amount]        MONEY          NULL,
    [PPV_Amount]         MONEY          NULL,
    [TaxOther_Amount]    MONEY          NULL,
    [Bank_ID]            NVARCHAR (50)  NULL,
    [MCash]              MONEY          NULL,
    [MCard]              MONEY          NULL,
    [MTransfer]          MONEY          NULL,
    [MDebt]              MONEY          NULL,
    [MGotoRep]           MONEY          NULL,
    [TotalNoneTax]       MONEY          NULL,
    [mDiscountProduct]   MONEY          NULL,
    [iDisOpt]            INT            NULL,
    [fDisOfFood]         FLOAT (53)     NULL,
    [fDisOfDrink]        FLOAT (53)     NULL,
    [CurrPay]            NVARCHAR (50)  NULL,
    [ExCurrPay]          FLOAT (53)     NULL,
    [MOut]               FLOAT (53)     NULL,
    [dtUpdated]          SMALLDATETIME  NULL,
    [iType]              INT            NULL,
    [noiphathanh]        NVARCHAR (50)  NULL,
    [TableJoin]          NVARCHAR (255) NULL,
    [isPrintVAT]         BIT            NULL,
    [ContentVAT]         NVARCHAR (500) NULL,
    [QtyVAT]             FLOAT (53)     NULL,
    [PriceOfVAT]         MONEY          NULL,
    [UnitVAT]            NVARCHAR (50)  NULL,
    [TotalOfVAT]         FLOAT (53)     NULL,
    [VatOfVAT]           FLOAT (53)     NULL,
    [VatAmountOfVAT]     MONEY          NULL,
    [EndTotalOfVAT]      MONEY          NULL,
    [InWordsOfVAT]       NVARCHAR (255) NULL,
    [AccountNo]          NVARCHAR (50)  NULL,
    [ShiftNo]            NVARCHAR (50)  NULL,
    [TimeDeliver]        SMALLDATETIME  NULL,
    [CardID]             NVARCHAR (50)  NULL,
    [f_DiscountByCardID] FLOAT (53)     NULL,
    [m_DiscountByCardID] MONEY          NULL,
    [nVoucher]           INT            NULL,
    [mVoucher]           MONEY          NULL,
    [isGuestGetBill]     BIT            NULL,
    CONSTRAINT [PK_Ls_ResOrder] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_ResOrder_Ls_PaymentResDebt] FOREIGN KEY ([Payment]) REFERENCES [dbo].[Ls_PaymentResDebt] ([i_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Ls_ResOrder_Ls_Table] FOREIGN KEY ([Table_ID]) REFERENCES [dbo].[Ls_Table] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE Trigger trg_DelResOrderOnDBVO ON LS_ResOrder  
for Delete  
as  
 Declare @OrderID nvarchar(50)  
 Declare CurrRes cursor for Select s_ID from Deleted  
 Open CurrRes  
 Fetch next from CurrRes into @OrderID  
 While @@Fetch_Status=0  
 Begin  
	Exec sp_DelOrderOnDBVO @OrderID
	Exec sp_DelInvOnDBVO @OrderID  
	Fetch next from CurrRes into @OrderID  
 End  
 Close CurrRes  
 Deallocate CurrRes  

GO
CREATE Trigger trg_TransResOrder2DBVO ON LS_ResOrder
for insert
as
	Declare @OrderID nvarchar(50)
	Declare CurrInsRes cursor for Select s_ID from Inserted
	Open CurrInsRes
	Fetch next from CurrInsRes into @OrderID
	While @@Fetch_Status=0
	Begin
		Exec sp_TransInv2DBVO @OrderID		
		Fetch next from CurrInsRes into @OrderID
	End
	Close CurrInsRes
	Deallocate CurrInsRes
