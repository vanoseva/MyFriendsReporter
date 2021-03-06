﻿CREATE TABLE [dbo].[tmpResOrder] (
    [s_ID]               NVARCHAR (50)  CONSTRAINT [DF_tmpResOrder_s_ID] DEFAULT (newid()) NOT NULL,
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
    [Curr]               NVARCHAR (50)  CONSTRAINT [DF_tmpResOrder_Curr] DEFAULT (N'VND') NULL,
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
    [VIP]                BIT            CONSTRAINT [DF_tmpResOrder_VIP] DEFAULT ((0)) NULL,
    [PerVIP]             FLOAT (53)     NULL,
    [Free]               BIT            CONSTRAINT [DF_tmpResOrder_Free] DEFAULT ((0)) NULL,
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
    [isPrintBill]        BIT            CONSTRAINT [DF_tmpResOrder_isPrintBill] DEFAULT ((0)) NULL,
    [ObjID_VAT]          NVARCHAR (50)  NULL,
    [ObjName_VAT]        NVARCHAR (255) NULL,
    [RoomNo]             NVARCHAR (50)  NULL,
    [VAT_Amount]         MONEY          NULL,
    [TTDB_Amount]        MONEY          NULL,
    [PPV_Amount]         MONEY          NULL,
    [TaxOther_Amount]    MONEY          NULL,
    [Bank_ID]            NVARCHAR (50)  NULL,
    [isDebt]             BIT            NULL,
    [MCash]              MONEY          NULL,
    [MCard]              MONEY          NULL,
    [MTransfer]          MONEY          NULL,
    [MDebt]              MONEY          NULL,
    [MGotoRep]           MONEY          NULL,
    [iState]             INT            NULL,
    [TotalNoneTax]       MONEY          NULL,
    [mDiscountProduct]   MONEY          NULL,
    [iDisOpt]            INT            NULL,
    [fDisOfFood]         FLOAT (53)     NULL,
    [fDisOfDrink]        FLOAT (53)     NULL,
    [CurrPay]            NVARCHAR (50)  NULL,
    [ExCurrPay]          FLOAT (53)     NULL,
    [MOut]               FLOAT (53)     NULL,
    [Child]              INT            NULL,
    [iType]              INT            NULL,
    [noiphathanh]        NVARCHAR (50)  NULL,
    [TableJoin]          NVARCHAR (255) NULL,
    [NumberIDOld]        NVARCHAR (50)  NULL,
    [ShiftNo]            NVARCHAR (50)  NULL,
    [TimeDeliver]        SMALLDATETIME  NULL,
    [iCountPrint]        INT            NULL,
    [CardID]             NVARCHAR (50)  NULL,
    [f_DiscountByCardID] FLOAT (53)     NULL,
    [m_DiscountByCardID] MONEY          NULL,
    [nVoucher]           INT            NULL,
    [mVoucher]           MONEY          NULL,
    CONSTRAINT [PK_tmpResOrder] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_tmpResOrder_Ls_Table] FOREIGN KEY ([Table_ID]) REFERENCES [dbo].[Ls_Table] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

