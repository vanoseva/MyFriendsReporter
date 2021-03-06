﻿CREATE TABLE [dbo].[tmpResOrderDetail] (
    [s_ID]                  NVARCHAR (50)  CONSTRAINT [DF_tmpResOrderDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [OrderID]               NVARCHAR (50)  NULL,
    [Product_ID]            NVARCHAR (50)  NULL,
    [ProductID]             NVARCHAR (50)  NULL,
    [Product_Name]          NVARCHAR (255) NULL,
    [isProduct]             BIT            CONSTRAINT [DF_tmpResOrderDetail_isProduct] DEFAULT ((1)) NULL,
    [Unit]                  NVARCHAR (50)  NULL,
    [Qty]                   FLOAT (53)     NULL,
    [Exchange]              FLOAT (53)     CONSTRAINT [DF_tmpResOrderDetail_Exchange] DEFAULT ((1)) NULL,
    [Price]                 MONEY          NULL,
    [Discount]              FLOAT (53)     NULL,
    [Store_ID]              NVARCHAR (50)  NULL,
    [IDSort]                NUMERIC (18)   NOT NULL,
    [Note]                  NVARCHAR (255) NULL,
    [dt_Time]               DATETIME       NULL,
    [isBar]                 BIT            NULL,
    [isBep]                 BIT            NULL,
    [isServ]                BIT            NULL,
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
    [isBump]                BIT            NULL,
    [isDeliver]             BIT            NULL,
    [Employee_ID]           NVARCHAR (50)  NULL,
    [dtOrderTime]           SMALLDATETIME  NULL,
    CONSTRAINT [PK_tmpResOrderDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_tmpResOrderDetail_tmpResOrder] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[tmpResOrder] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

