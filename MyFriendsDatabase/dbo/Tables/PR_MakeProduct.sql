CREATE TABLE [dbo].[PR_MakeProduct] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_PR_MakeProduct_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Product_ID]    NVARCHAR (50)  NULL,
    [s_Product_ID_1]  NVARCHAR (50)  NULL,
    [f_Qty]           FLOAT (53)     NULL,
    [s_Note]          NVARCHAR (255) NULL,
    [i_IDSort]        NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [f_Price]         FLOAT (53)     NULL,
    [StoreOfProduct1] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_PR_MakeProduct] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_MakeProduct_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

