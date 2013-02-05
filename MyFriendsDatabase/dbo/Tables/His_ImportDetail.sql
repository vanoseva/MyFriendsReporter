CREATE TABLE [dbo].[His_ImportDetail] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF__His_Import__s_ID__1E463283] DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50)  NULL,
    [s_Product_ID]    NVARCHAR (50)  NULL,
    [s_Product_Name]  NVARCHAR (255) NULL,
    [f_Quantity]      FLOAT (53)     CONSTRAINT [DF__His_Impor__f_Qua__1F3A56BC] DEFAULT ((0)) NULL,
    [m_Price]         MONEY          CONSTRAINT [DF__His_Impor__m_Pri__202E7AF5] DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50)  NULL,
    [s_Unit]          NVARCHAR (50)  NULL,
    [f_Convert]       FLOAT (53)     NULL,
    [f_QuantityOrder] FLOAT (53)     CONSTRAINT [DF__His_Impor__f_Qua__21229F2E] DEFAULT ((0)) NULL,
    [i_IDsort]        NUMERIC (18)   NULL,
    [m_PriceUSD]      MONEY          CONSTRAINT [DF__His_Impor__m_Pri__2216C367] DEFAULT ((0)) NULL,
    [dt_OverDate]     SMALLDATETIME  NULL,
    [f_Discount]      FLOAT (53)     CONSTRAINT [DF__His_Impor__f_Dis__230AE7A0] DEFAULT ((0)) NULL,
    [m_Discount]      MONEY          CONSTRAINT [DF__His_Impor__m_Dis__23FF0BD9] DEFAULT ((0)) NULL,
    [s_Note]          NVARCHAR (50)  NULL,
    [s_Purchase_ID]   NVARCHAR (50)  NULL,
    CONSTRAINT [FK_His_ImportDetail_His_Imports] FOREIGN KEY ([s_Import_ID]) REFERENCES [dbo].[His_Imports] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

