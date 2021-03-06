﻿CREATE TABLE [dbo].[PR_ResOrderDetail_NVL] (
    [s_ID]           NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [OrderID_Detail] NVARCHAR (50)  NULL,
    [Product_ID]     NVARCHAR (50)  NULL,
    [ProductID]      NVARCHAR (50)  NULL,
    [Product_Name]   NVARCHAR (255) NULL,
    [isProduct]      BIT            DEFAULT ((1)) NULL,
    [Unit]           NVARCHAR (50)  NULL,
    [Qty]            FLOAT (53)     NULL,
    [Exchange]       FLOAT (53)     DEFAULT ((1)) NULL,
    [Price]          MONEY          NULL,
    [Discount]       FLOAT (53)     NULL,
    [Store_ID]       NVARCHAR (50)  NULL,
    [IDSort]         NUMERIC (18)   NULL,
    [Note]           NVARCHAR (255) NULL,
    [VAT]            FLOAT (53)     NULL,
    [VAT_Amount]     MONEY          NULL,
    [PPV]            FLOAT (53)     NULL,
    [PPV_Amount]     MONEY          NULL,
    [EndPrice]       MONEY          NULL,
    [b_isNVL]        BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ResOrderDetail_NVL_PR_ResOrderDetail_NH] FOREIGN KEY ([OrderID_Detail]) REFERENCES [dbo].[PR_ResOrderDetail_NH] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

