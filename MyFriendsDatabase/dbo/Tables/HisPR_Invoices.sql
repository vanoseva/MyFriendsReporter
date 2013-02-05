﻿CREATE TABLE [dbo].[HisPR_Invoices] (
    [EventID]        NVARCHAR (50)  NOT NULL,
    [s_ID]           NVARCHAR (50)  CONSTRAINT [DF_HisPR_Invoices_s_ID] DEFAULT (newid()) NOT NULL,
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
    [IDSort]         NUMERIC (18)   NULL,
    [VND]            MONEY          NULL,
    [USD]            MONEY          NULL,
    [UCreate]        NVARCHAR (50)  NULL,
    [dtCreate]       SMALLDATETIME  NULL,
    [UEdit]          NVARCHAR (50)  NULL,
    [dtEdit]         SMALLDATETIME  NULL,
    [isSlipt]        BIT            CONSTRAINT [DF_HisPR_Invoices_isSlipt] DEFAULT ((0)) NULL,
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
    [fromSlipt]      BIT            NULL,
    [TraLai]         BIT            NULL,
    [ShiftNO_ID]     NVARCHAR (50)  NULL,
    [Bank_ID]        NVARCHAR (50)  NULL,
    [PayUSD]         MONEY          NULL,
    CONSTRAINT [PK_HisPR_Invoices] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_HisPR_Invoices_PR_Events] FOREIGN KEY ([EventID]) REFERENCES [dbo].[PR_Events] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

