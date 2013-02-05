CREATE TABLE [dbo].[PR_PricePartner] (
    [s_ID]        NVARCHAR (50)  NOT NULL,
    [Roomtype_ID] NVARCHAR (50)  NULL,
    [PriceVND]    MONEY          NULL,
    [PriceUSD]    MONEY          NULL,
    [nFreeRoom]   INT            NULL,
    [Ordinal]     INT            NULL,
    [Note]        NVARCHAR (255) NULL,
    [Master_ID]   NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_PricePartner_LS_PricePartner] FOREIGN KEY ([Master_ID]) REFERENCES [dbo].[LS_PricePartner] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

