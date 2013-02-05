CREATE TABLE [dbo].[PR_Product_Time_Menu] (
    [s_ID]                 NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [Product_ID]           NVARCHAR (50)  NULL,
    [Time_ID]              NVARCHAR (50)  NULL,
    [Price]                MONEY          NULL,
    [Price_USD]            MONEY          NULL,
    [Menu_ID]              NVARCHAR (50)  NULL,
    [PriceServiceGroup_ID] NVARCHAR (50)  NULL,
    [Note]                 NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Product_Time_Menu_Ls_Menu] FOREIGN KEY ([Menu_ID]) REFERENCES [dbo].[Ls_Menu] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Product_Time_Menu_Ls_PriceServiceGroup] FOREIGN KEY ([PriceServiceGroup_ID]) REFERENCES [dbo].[Ls_PriceServiceGroup] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Product_Time_Menu_LS_Products] FOREIGN KEY ([Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Product_Time_Menu_Ls_Timer] FOREIGN KEY ([Time_ID]) REFERENCES [dbo].[Ls_Timer] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

