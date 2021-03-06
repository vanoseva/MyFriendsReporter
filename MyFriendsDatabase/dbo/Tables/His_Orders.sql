﻿CREATE TABLE [dbo].[His_Orders] (
    [s_ID]                  NVARCHAR (50)   CONSTRAINT [DF__His_Orders__s_ID__25E7544B] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]            NVARCHAR (50)   NULL,
    [s_Char]                NVARCHAR (50)   NULL,
    [i_ItemID]              NVARCHAR (50)   NULL,
    [dt_OrderDate]          SMALLDATETIME   NULL,
    [s_EmployeeID]          NVARCHAR (50)   NULL,
    [s_ObjectID]            NVARCHAR (50)   NULL,
    [s_Object_Name]         NVARCHAR (255)  NULL,
    [s_DeliverableAddresss] NVARCHAR (500)  NULL,
    [s_PayabbleAddress]     NVARCHAR (500)  NULL,
    [s_ContactID]           NVARCHAR (50)   NULL,
    [m_Ordertotal]          MONEY           CONSTRAINT [DF__His_Order__m_Ord__26DB7884] DEFAULT ((0)) NULL,
    [m_TotalReturn]         MONEY           NULL,
    [s_Note]                NVARCHAR (4000) NULL,
    [f_VAT]                 FLOAT (53)      CONSTRAINT [DF__His_Order__f_VAT__27CF9CBD] DEFAULT ((0)) NULL,
    [m_VAT]                 MONEY           CONSTRAINT [DF__His_Order__m_VAT__28C3C0F6] DEFAULT ((0)) NULL,
    [f_Discount]            FLOAT (53)      CONSTRAINT [DF__His_Order__f_Dis__29B7E52F] DEFAULT ((0)) NULL,
    [m_OrderTotalDiscount]  MONEY           CONSTRAINT [DF__His_Order__m_Ord__2AAC0968] DEFAULT ((0)) NULL,
    [f_Per]                 FLOAT (53)      CONSTRAINT [DF__His_Order__f_Per__2BA02DA1] DEFAULT ((0)) NULL,
    [m_Per]                 MONEY           CONSTRAINT [DF__His_Order__m_Per__2C9451DA] DEFAULT ((0)) NULL,
    [i_IDSort]              NUMERIC (18)    NULL,
    [s_Word]                NVARCHAR (500)  NULL,
    [s_GroupProduct]        NVARCHAR (3000) NULL,
    [s_FullOrderDate]       NVARCHAR (50)   NULL,
    [s_SymbolInvoice]       NVARCHAR (50)   NULL,
    [s_Invoice]             NVARCHAR (50)   NULL,
    [m_Exchange]            MONEY           CONSTRAINT [DF__His_Order__m_Exc__2D887613] DEFAULT ((0)) NULL,
    [s_PurchaseID]          NVARCHAR (50)   NULL,
    [s_Quote_ID]            NVARCHAR (50)   NULL,
    [b_isDiscount]          BIT             CONSTRAINT [DF__His_Order__b_isD__2E7C9A4C] DEFAULT ((0)) NULL,
    [b_isDiscountProduct]   BIT             CONSTRAINT [DF__His_Order__b_isD__2F70BE85] DEFAULT ((0)) NULL,
    [i_TermID]              NVARCHAR (50)   NULL,
    [s_Creator]             NVARCHAR (50)   NULL,
    [s_Editor]              NVARCHAR (50)   NULL,
    [dt_Create]             SMALLDATETIME   NULL,
    [dt_Edit]               SMALLDATETIME   NULL,
    [f_Commission]          FLOAT (53)      CONSTRAINT [DF__His_Order__f_Com__3064E2BE] DEFAULT ((0)) NULL,
    [m_Commission]          MONEY           CONSTRAINT [DF__His_Order__m_Com__315906F7] DEFAULT ((0)) NULL,
    [b_isDept]              BIT             CONSTRAINT [DF__His_Order__b_isD__324D2B30] DEFAULT ((0)) NULL,
    [b_isCash]              BIT             CONSTRAINT [DF__His_Order__b_isC__33414F69] DEFAULT ((0)) NULL,
    [b_isCashAll]           BIT             CONSTRAINT [DF__His_Order__b_isC__343573A2] DEFAULT ((0)) NULL,
    [b_isCashPart]          BIT             CONSTRAINT [DF__His_Order__b_isC__352997DB] DEFAULT ((0)) NULL,
    [b_isCashPrepay]        BIT             CONSTRAINT [DF__His_Order__b_isC__361DBC14] DEFAULT ((0)) NULL,
    [m_Cash]                MONEY           CONSTRAINT [DF__His_Order__m_Cas__3711E04D] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_His_Orders] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

