﻿CREATE TABLE [dbo].[PR_DebtInvoices] (
    [s_ID]           NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
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
    [isSlipt]        BIT            DEFAULT ((0)) NULL,
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
    [IsDebtCus]      BIT            NULL
);

