CREATE TABLE [dbo].[His_InstockImportDetail] (
    [s_ID]            NVARCHAR (50)  DEFAULT (newid()) NULL,
    [s_Import_ID]     NVARCHAR (50)  NULL,
    [s_Product_ID]    NVARCHAR (50)  NULL,
    [s_Product_Name]  NVARCHAR (255) NULL,
    [f_Quantity]      FLOAT (53)     DEFAULT ((0)) NULL,
    [m_Price]         MONEY          DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50)  NULL,
    [s_Unit]          NVARCHAR (50)  NULL,
    [f_Convert]       FLOAT (53)     NULL,
    [f_QuantityOrder] FLOAT (53)     DEFAULT ((0)) NULL,
    [i_IDsort]        NUMERIC (18)   NULL,
    [m_PriceUSD]      MONEY          DEFAULT ((0)) NULL,
    [dt_OverDate]     SMALLDATETIME  NULL,
    [f_Discount]      FLOAT (53)     DEFAULT ((0)) NULL,
    [m_Discount]      MONEY          DEFAULT ((0)) NULL,
    [s_Note]          NVARCHAR (50)  NULL,
    [s_Purchase_ID]   NVARCHAR (50)  NULL,
    CONSTRAINT [FK_His_InstockImportDetail_His_InstockImports] FOREIGN KEY ([s_Import_ID]) REFERENCES [dbo].[His_InstockImports] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

