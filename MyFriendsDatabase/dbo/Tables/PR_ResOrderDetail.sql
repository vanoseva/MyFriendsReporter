CREATE TABLE [dbo].[PR_ResOrderDetail] (
    [s_ID]           NVARCHAR (50) CONSTRAINT [DF__PR_ResOrde__s_ID__1F398B65] DEFAULT (newid()) NOT NULL,
    [Order_ID]       NVARCHAR (50) NULL,
    [Service_ID]     NVARCHAR (50) NULL,
    [Qty]            FLOAT (53)    NULL,
    [Price]          MONEY         NULL,
    [Curr]           NVARCHAR (50) NULL,
    [IDSort]         NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    [Sub_Total]      MONEY         NULL,
    [f_Discount]     FLOAT (53)    NULL,
    [m_Discount]     MONEY         NULL,
    [Store_ID]       NVARCHAR (50) NULL,
    [PriceNoneTax]   MONEY         NULL,
    [AmountTTDB]     MONEY         NULL,
    [AmountTaxOther] MONEY         NULL,
    [AmountPPV]      MONEY         NULL,
    [AmountVAT]      MONEY         NULL,
    CONSTRAINT [PK_PR_ResOrderDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ResOrderDetail_Ls_Service] FOREIGN KEY ([Service_ID]) REFERENCES [dbo].[Ls_Service] ([s_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ResOrderDetail_PR_ResOrder] FOREIGN KEY ([Order_ID]) REFERENCES [dbo].[PR_ResOrder] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE Trigger trg_Trans2DBVO ON PR_ResOrderDetail
for insert
as
	Declare @OrderID nvarchar(50)
	Declare CurrSerdt cursor for Select s_ID from Inserted
	Open CurrSerdt
	Fetch next from CurrSerdt into @OrderID
	While @@Fetch_Status=0
	Begin
		Exec sp_Trans2DBVO @OrderID		
		Fetch next from CurrSerdt into @OrderID
	End
	Close CurrSerdt
	Deallocate CurrSerdt
