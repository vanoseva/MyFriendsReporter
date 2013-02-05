﻿CREATE TABLE [dbo].[LS_PurchaseOrders] (
    [s_ID]                 NVARCHAR (50)   CONSTRAINT [DF__LS_Purchas__s_ID__57DD0BE4] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]           NVARCHAR (50)   NULL,
    [s_Char]               NVARCHAR (50)   NULL,
    [i_ItemID]             INT             NULL,
    [dt_OrderDate]         SMALLDATETIME   NULL,
    [s_EmployeeID]         NVARCHAR (50)   NULL,
    [s_Object_ID]          NVARCHAR (50)   NULL,
    [s_DeliverableAddress] NVARCHAR (500)  NULL,
    [s_PayableAddress]     NVARCHAR (500)  NULL,
    [s_ContactID]          NVARCHAR (50)   NULL,
    [m_Ordertotal]         MONEY           CONSTRAINT [DF_LS_PurchaseOrders_m_Ordertotal] DEFAULT ((0)) NULL,
    [s_Note]               NVARCHAR (4000) NULL,
    [f_VAT]                FLOAT (53)      CONSTRAINT [DF_LS_PurchaseOrders_f_VAT] DEFAULT ((0)) NULL,
    [m_VAT]                MONEY           CONSTRAINT [DF__LS_Purcha__i_VAT__59C55456] DEFAULT ((0)) NULL,
    [m_OrderTotalDiscount] MONEY           CONSTRAINT [DF__LS_Purcha__f_Dis__5AB9788F] DEFAULT ((0)) NULL,
    [m_per]                MONEY           CONSTRAINT [DF_LS_PurchaseOrders_m_per] DEFAULT ((0)) NULL,
    [f_Per]                FLOAT (53)      CONSTRAINT [DF__LS_Purcha__f_Per__5BAD9CC8] DEFAULT ((0)) NULL,
    [i_IDSort]             NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]               NVARCHAR (500)  NULL,
    [s_GroupProduct]       NVARCHAR (3000) NULL,
    [s_FullOrderDate]      NVARCHAR (50)   CONSTRAINT [DF__LS_Purcha__s_Ful__5CA1C101] DEFAULT (getdate()) NULL,
    [s_SymbolInvoice]      NVARCHAR (50)   NULL,
    [s_Invoice]            NVARCHAR (50)   NULL,
    [m_Exchange]           MONEY           CONSTRAINT [DF__LS_Purcha__m_Exc__5D95E53A] DEFAULT ((0)) NULL,
    [b_isFinish]           BIT             CONSTRAINT [DF_LS_PurchaseOrders_b_isFinish] DEFAULT ((0)) NULL,
    [s_Quote_ID]           NVARCHAR (50)   NULL,
    [b_isPartially]        BIT             CONSTRAINT [DF_LS_PurchaseOrders_b_isPartially] DEFAULT ((0)) NULL,
    [b_isEnough]           BIT             CONSTRAINT [DF_LS_PurchaseOrders_b_isEnough] DEFAULT ((0)) NULL,
    [b_isOver]             BIT             CONSTRAINT [DF_LS_PurchaseOrders_b_isOver] DEFAULT ((0)) NULL,
    [s_State]              NVARCHAR (100)  CONSTRAINT [DF_LS_PurchaseOrders_s_State] DEFAULT (N'Đang đặt hàng') NULL,
    [d_EndDate]            SMALLDATETIME   NULL,
    [s_DiscountDetail_ID]  NVARCHAR (50)   NULL,
    [b_isDiscountProduct]  BIT             CONSTRAINT [DF_LS_PurchaseOrders_b_isDiscountProduct] DEFAULT ((1)) NULL,
    [i_TermID]             NVARCHAR (50)   CONSTRAINT [DF_LS_PurchaseOrders_i_TermID] DEFAULT ((0)) NULL,
    [s_Creator]            NVARCHAR (50)   NULL,
    [s_Editor]             NVARCHAR (50)   NULL,
    [dt_Create]            SMALLDATETIME   NULL,
    [dt_Edit]              SMALLDATETIME   NULL,
    CONSTRAINT [PK_LS_PurchaseOrders] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_PurchaseOrders_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

