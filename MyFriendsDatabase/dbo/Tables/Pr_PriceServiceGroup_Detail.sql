CREATE TABLE [dbo].[Pr_PriceServiceGroup_Detail] (
    [s_ID]                   NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [s_PriceServiceGroup_ID] NVARCHAR (50)  NULL,
    [i_Minute]               INT            NULL,
    [m_Money]                MONEY          NULL,
    [s_Note]                 NVARCHAR (500) NULL,
    [m_MoneyUSD]             MONEY          NULL,
    [Ordinal]                INT            NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_PriceServiceGroup_Detail_Ls_PriceServiceGroup] FOREIGN KEY ([s_PriceServiceGroup_ID]) REFERENCES [dbo].[Ls_PriceServiceGroup] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

