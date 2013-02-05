CREATE TABLE [dbo].[PR_Product_UnitPrices] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_PR_Product_UnitPrices_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Product_ID]  NVARCHAR (50)  NULL,
    [m_Price]       MONEY          CONSTRAINT [DF_PR_Product_UnitPrices_m_Price] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [i_Ordinal]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [f_PriceImport] FLOAT (53)     NULL,
    CONSTRAINT [PK_PR_Product_UnitPrices] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Product_UnitPrices_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

