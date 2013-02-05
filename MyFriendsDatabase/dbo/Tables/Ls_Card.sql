CREATE TABLE [dbo].[Ls_Card] (
    [s_ID]        NVARCHAR (50)  NOT NULL,
    [ID]          NVARCHAR (50)  NULL,
    [fDiscount]   FLOAT (53)     NULL,
    [mDiscount]   MONEY          NULL,
    [ExtendDate]  SMALLDATETIME  NULL,
    [Active]      BIT            NULL,
    [Note]        NVARCHAR (255) NULL,
    [Ordinal]     INT            NULL,
    [CardType_ID] NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Card_Ls_CardType] FOREIGN KEY ([CardType_ID]) REFERENCES [dbo].[Ls_CardType] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

