CREATE TABLE [dbo].[PR_ResOrderDetail_NH] (
    [s_ID]                  NVARCHAR (50)  CONSTRAINT [DF_PR_ResOrderDetail_NH_s_ID] DEFAULT (newid()) NOT NULL,
    [OrderID]               NVARCHAR (50)  NULL,
    [Product_ID]            NVARCHAR (50)  NULL,
    [ProductID]             NVARCHAR (50)  NULL,
    [Product_Name]          NVARCHAR (255) NULL,
    [isProduct]             BIT            CONSTRAINT [DF_PR_ResOrderDetail_NH_isProduct] DEFAULT ((1)) NULL,
    [Unit]                  NVARCHAR (50)  NULL,
    [Qty]                   FLOAT (53)     NULL,
    [Exchange]              FLOAT (53)     CONSTRAINT [DF_PR_ResOrderDetail_NH_Exchange] DEFAULT ((1)) NULL,
    [Price]                 MONEY          NULL,
    [Discount]              FLOAT (53)     NULL,
    [Store_ID]              NVARCHAR (50)  NULL,
    [IDSort]                NUMERIC (18)   NULL,
    [Note]                  NVARCHAR (255) NULL,
    [VAT]                   FLOAT (53)     NULL,
    [VAT_Amount]            MONEY          NULL,
    [PPV]                   FLOAT (53)     NULL,
    [PPV_Amount]            MONEY          NULL,
    [EndPrice]              MONEY          NULL,
    [b_isServices]          BIT            NULL,
    [iState]                INT            NULL,
    [TTDB]                  FLOAT (53)     NULL,
    [TTDB_Amount]           MONEY          NULL,
    [NK]                    FLOAT (53)     NULL,
    [NK_Amount]             MONEY          NULL,
    [OtherTax]              FLOAT (53)     NULL,
    [OtherTax_Amount]       MONEY          NULL,
    [isTax]                 BIT            NULL,
    [mDiscount]             MONEY          NULL,
    [f_DiscountNumber]      FLOAT (53)     NULL,
    [m_DiscountNumber]      MONEY          NULL,
    [SubTotal]              MONEY          NULL,
    [SubTotalNoneDisNumber] MONEY          NULL,
    [Employee_ID]           NVARCHAR (50)  NULL,
    [dtOrderTime]           SMALLDATETIME  NULL,
    CONSTRAINT [PK_PR_ResOrderDetail_NH] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ResOrderDetail_NH_Ls_ResOrder] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Ls_ResOrder] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ResOrderDetail_NH_LS_Stores] FOREIGN KEY ([Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE Trigger trg_TransResOrderDetail2DBVO ON PR_ResOrderDetail_NH
for insert
as
	Declare @OrderID nvarchar(50)
	Declare CurrResdt cursor for Select s_ID from Inserted
	Open CurrResdt
	Fetch next from CurrResdt into @OrderID
	While @@Fetch_Status=0
	Begin
		Exec sp_Trans2DBVO @OrderID		
		Fetch next from CurrResdt into @OrderID
	End
	Close CurrResdt
	Deallocate CurrResdt