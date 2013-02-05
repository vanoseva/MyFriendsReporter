CREATE TABLE [dbo].[PR_MenuProduct] (
    [s_ID]       NVARCHAR (50)  CONSTRAINT [DF_PR_MenuProduct_s_ID] DEFAULT (newid()) NOT NULL,
    [Menu_ID]    NVARCHAR (50)  NULL,
    [Product_ID] NVARCHAR (50)  NULL,
    [Price]      MONEY          NULL,
    [Note]       NVARCHAR (255) NULL,
    [Ordinal]    NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [Price_USD]  MONEY          NULL,
    [Price1]     MONEY          NULL,
    [Price2]     MONEY          NULL,
    [Price_USD1] MONEY          NULL,
    [Price_USD2] MONEY          NULL,
    CONSTRAINT [PK_PR_MenuProduct] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_MenuProduct_Ls_Menu] FOREIGN KEY ([Menu_ID]) REFERENCES [dbo].[Ls_Menu] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_MenuProduct_LS_Products] FOREIGN KEY ([Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

