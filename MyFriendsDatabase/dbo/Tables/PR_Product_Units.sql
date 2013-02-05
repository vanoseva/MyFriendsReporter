CREATE TABLE [dbo].[PR_Product_Units] (
    [s_ID]                NVARCHAR (50)  CONSTRAINT [DF_PR_Product_Unit_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Product_ID]        NVARCHAR (50)  NULL,
    [s_Unit]              NVARCHAR (100) NULL,
    [f_ConvertedQuantity] FLOAT (53)     CONSTRAINT [DF_PR_Product_Unit_f_ConvertedQuantity] DEFAULT ((1)) NULL,
    [s_Note]              NVARCHAR (500) NULL,
    [i_Ordinal]           NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [b_DefaultOrders]     BIT            NULL,
    [b_DefaultImport]     BIT            NULL,
    [b_DefaultInstock]    BIT            NULL,
    CONSTRAINT [PK_PR_Product_Unit] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Product_Units_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

