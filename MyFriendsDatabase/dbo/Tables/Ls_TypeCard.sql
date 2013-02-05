CREATE TABLE [dbo].[Ls_TypeCard] (
    [s_ID]        NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [CardType_ID] NVARCHAR (50)  NULL,
    [s_Name]      NVARCHAR (100) NULL,
    [Note]        NVARCHAR (250) NULL,
    [Ordinal]     INT            NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

