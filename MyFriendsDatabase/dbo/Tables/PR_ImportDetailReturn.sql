CREATE TABLE [dbo].[PR_ImportDetailReturn] (
    [s_ID]            NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50)  NULL,
    [s_Product_ID]    NVARCHAR (50)  NULL,
    [f_Quantity]      FLOAT (53)     DEFAULT ((0)) NULL,
    [m_PriceImport]   MONEY          DEFAULT ((0)) NULL,
    [m_PriceOrder]    MONEY          DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50)  NULL,
    [s_Unit]          NVARCHAR (50)  NULL,
    [f_Convert]       FLOAT (53)     NULL,
    [f_QuantityOrder] FLOAT (53)     DEFAULT ((0)) NULL,
    [i_IDsort]        NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [m_PriceUSD]      MONEY          DEFAULT ((0)) NULL,
    [dt_OverDate]     SMALLDATETIME  NULL,
    [OrderID]         NVARCHAR (50)  NULL,
    [s_Note]          NVARCHAR (500) NULL,
    CONSTRAINT [PK_PR_ImportDetailReturn] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ImportDetailReturn_Ls_ImportReturns] FOREIGN KEY ([s_Import_ID]) REFERENCES [dbo].[Ls_ImportReturns] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

