CREATE TABLE [dbo].[Pr_Product_PriceTime] (
    [s_ID]                   NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [s_PriceServiceGroup_ID] NVARCHAR (50) NULL,
    [s_Product_ID]           NVARCHAR (50) NULL,
    [i_Minute]               INT           NULL,
    [m_Money]                MONEY         NULL,
    [s_Note]                 NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_Product_PriceTime_Ls_PriceServiceGroup] FOREIGN KEY ([s_PriceServiceGroup_ID]) REFERENCES [dbo].[Ls_PriceServiceGroup] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Pr_Product_PriceTime_Ls_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

