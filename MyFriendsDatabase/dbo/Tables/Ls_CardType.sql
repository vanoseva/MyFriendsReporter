CREATE TABLE [dbo].[Ls_CardType] (
    [s_ID]             NVARCHAR (50)  NOT NULL,
    [CardTypeCode]     NVARCHAR (50)  NULL,
    [CardTypeName]     NVARCHAR (255) NULL,
    [isPercent]        BIT            NULL,
    [iPaymentDiscount] INT            NULL,
    [Note]             NVARCHAR (255) NULL,
    [Ordinal]          INT            NULL,
    [ValDis]           FLOAT (53)     NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

