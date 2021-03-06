﻿CREATE TABLE [dbo].[PR_ImportDetail_Other] (
    [s_ID]            NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50) NULL,
    [s_Product_ID]    NVARCHAR (50) NULL,
    [f_Quantity]      FLOAT (53)    DEFAULT ((0)) NULL,
    [m_Price]         MONEY         DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50) NULL,
    [s_Unit]          NVARCHAR (50) NULL,
    [f_Convert]       FLOAT (53)    NULL,
    [f_QuantityOrder] FLOAT (53)    DEFAULT ((0)) NULL,
    [i_IDsort]        NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    [m_PriceUSD]      MONEY         DEFAULT ((0)) NULL,
    [dt_OverDate]     SMALLDATETIME NULL,
    [f_Discount]      FLOAT (53)    DEFAULT ((0)) NULL,
    [m_Discount]      MONEY         DEFAULT ((0)) NULL,
    [s_Note]          NVARCHAR (50) NULL,
    CONSTRAINT [PK_PR_ImportDetail_Orther] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ImportDetail_Orther_Ls_Import_Orther] FOREIGN KEY ([s_Import_ID]) REFERENCES [dbo].[Ls_Import_Other] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ImportDetail_Orther_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ImportDetail_Orther_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

