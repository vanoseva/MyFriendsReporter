﻿CREATE TABLE [dbo].[HisPR_InvoiceDetail] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_HisPR_InvoiceDetail_s_ID] DEFAULT (newid()) NOT NULL,
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
    [IDSort]          NUMERIC (18)   CONSTRAINT [DF_HisPR_InvoiceDetail_IDSort] DEFAULT ((0)) NULL,
    [Register_ID]     NVARCHAR (50)  NULL,
    [isTax]           BIT            CONSTRAINT [DF_HisPR_InvoiceDetail_isTax] DEFAULT ((0)) NULL,
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
    CONSTRAINT [PK_HisPR_InvoiceDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_HisPR_InvoiceDetail_HisPR_Invoices] FOREIGN KEY ([Invoice_ID]) REFERENCES [dbo].[HisPR_Invoices] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

