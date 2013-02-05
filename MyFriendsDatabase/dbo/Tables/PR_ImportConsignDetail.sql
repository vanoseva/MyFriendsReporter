CREATE TABLE [dbo].[PR_ImportConsignDetail] (
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
    CONSTRAINT [PK_PR_ImportConsignDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ImportConsignDetail_Ls_ImportConsign] FOREIGN KEY ([s_Import_ID]) REFERENCES [dbo].[Ls_ImportConsign] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ImportConsignDetail_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

