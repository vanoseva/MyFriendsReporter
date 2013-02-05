CREATE TABLE [dbo].[PR_InvoiceDetail] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF__PR_Invoice__s_ID__1980B20F] DEFAULT (newid()) NOT NULL,
    [Invoice_ID]      NVARCHAR (50)  NOT NULL,
    [Order_ID]        NVARCHAR (50)  NULL,
    [Services]        INT            NULL,
    [Emites]          NVARCHAR (50)  NULL,
    [Order_day]       SMALLDATETIME  NULL,
    [Sub_Total]       MONEY          NULL,
    [Total]           MONEY          NULL,
    [Curr]            NVARCHAR (50)  NULL,
    [PPV]             FLOAT (53)     NULL,
    [VAT]             FLOAT (53)     NULL,
    [TaxTTDB]         FLOAT (53)     NULL,
    [TaxOther]        FLOAT (53)     NULL,
    [Room_id]         NVARCHAR (50)  NULL,
    [FromDate]        SMALLDATETIME  NULL,
    [ToDate]          SMALLDATETIME  NULL,
    [NumDay]          FLOAT (53)     NULL,
    [Price]           MONEY          NULL,
    [Discount]        MONEY          NULL,
    [DiscountUSD]     MONEY          NULL,
    [Ext]             MONEY          NULL,
    [InvoiceChange]   NVARCHAR (50)  NULL,
    [TotalUSD]        MONEY          NULL,
    [TotalVND]        MONEY          NULL,
    [PriceUSD]        MONEY          NULL,
    [ExtraUSD]        MONEY          NULL,
    [Note]            NVARCHAR (255) NULL,
    [IDSort]          NUMERIC (18)   CONSTRAINT [DF_PR_InvoiceDetail_IDSort] DEFAULT ((0)) NULL,
    [Register_ID]     NVARCHAR (50)  NULL,
    [isTax]           BIT            CONSTRAINT [DF_PR_InvoiceDetail_isTax] DEFAULT ((0)) NULL,
    [Sub_TotalVND]    MONEY          NULL,
    [Sub_TotalUSD]    MONEY          NULL,
    [VAT_Amount]      MONEY          NULL,
    [TTDB_Amount]     MONEY          NULL,
    [PPV_Amount]      MONEY          NULL,
    [TaxOther_Amount] MONEY          NULL,
    [GroupServices]   NVARCHAR (50)  NULL,
    [Origin_InvID]    NVARCHAR (50)  NULL,
    [Sub_TotalOrigin] MONEY          NULL,
    [SelectPrint]     BIT            NULL,
    CONSTRAINT [PK_PR_InvoiceDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_InvoiceDetail_PR_Invoices] FOREIGN KEY ([Invoice_ID]) REFERENCES [dbo].[PR_Invoices] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE Trigger trg_TransInv2DBVO ON PR_InvoiceDetail
for insert
as
	Declare @OrderID nvarchar(50)
	Declare CurrIvdt cursor for Select s_ID from Inserted
	Open CurrIvdt
	Fetch next from CurrIvdt into @OrderID
	While @@Fetch_Status=0
	Begin
		Exec sp_TransInv2DBVO @OrderID		
		Fetch next from CurrIvdt into @OrderID
	End
	Close CurrIvdt
	Deallocate CurrIvdt

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tong tien da co PPV,Thue (theo loai tien)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'Sub_Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tong theo loai tien (ko co PPV,VAT)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tong theo tien USD (ko co PPV,thue)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'TotalUSD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tong theo tien VND(ko co PPV,Thue)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'TotalVND';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Don gia USD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'PriceUSD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phu troi USD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'ExtraUSD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tong tien la VND(co ppv, thue)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'Sub_TotalVND';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tong tien la USD ( co ppv, thue)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_InvoiceDetail', @level2type = N'COLUMN', @level2name = N'Sub_TotalUSD';

