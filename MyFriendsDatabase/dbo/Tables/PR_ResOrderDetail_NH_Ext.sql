CREATE TABLE [dbo].[PR_ResOrderDetail_NH_Ext] (
    [s_ID]                  NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [OrderID]               NVARCHAR (50)  NULL,
    [ProName]               NVARCHAR (255) NULL,
    [Unit]                  NVARCHAR (50)  NULL,
    [Qty]                   FLOAT (53)     NULL,
    [Price]                 MONEY          NULL,
    [VAT]                   FLOAT (53)     NULL,
    [PPV]                   FLOAT (53)     NULL,
    [Discount]              FLOAT (53)     NULL,
    [Ordinal]               NUMERIC (18)   NULL,
    [s1]                    NVARCHAR (50)  NULL,
    [s2]                    NVARCHAR (50)  NULL,
    [s3]                    NVARCHAR (50)  NULL,
    [s4]                    NVARCHAR (50)  NULL,
    [v1]                    FLOAT (53)     NULL,
    [v2]                    FLOAT (53)     NULL,
    [v3]                    FLOAT (53)     NULL,
    [v4]                    FLOAT (53)     NULL,
    [Note]                  NVARCHAR (255) NULL,
    [mDiscount]             MONEY          NULL,
    [Vat_Amount]            MONEY          NULL,
    [PPV_Amount]            MONEY          NULL,
    [f_DiscountNumber]      FLOAT (53)     NULL,
    [m_DiscountNumber]      MONEY          NULL,
    [EndPrice]              MONEY          NULL,
    [SubTotal]              MONEY          NULL,
    [SubTotalNoneDisNumber] MONEY          NULL,
    [isBar]                 BIT            NULL,
    [isBep]                 BIT            NULL,
    [Employee_ID]           NVARCHAR (50)  NULL,
    [dtOrderTime]           SMALLDATETIME  NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ResOrderDetail_NH_Ext_Ls_ResOrder] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Ls_ResOrder] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE Trigger [trg_TransResOrderDetailEXT2DBVO] ON [dbo].[PR_ResOrderDetail_NH_EXT]
for insert
as
	Declare @OrderID nvarchar(50)
	Declare CurrResdt_EXT cursor for Select s_ID from Inserted
	Open CurrResdt_EXT
	Fetch next from CurrResdt_EXT into @OrderID
	While @@Fetch_Status=0
	Begin
		Exec sp_Trans2DBVO @OrderID		
		Fetch next from CurrResdt_EXT into @OrderID
	End
	Close CurrResdt_EXT
	Deallocate CurrResdt_EXT