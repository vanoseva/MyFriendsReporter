CREATE TABLE [dbo].[His_TypeCard] (
    [EventID]     NVARCHAR (50)  NOT NULL,
    [s_ID]        NVARCHAR (50)  NOT NULL,
    [CardType_ID] NVARCHAR (50)  NULL,
    [s_Name]      NVARCHAR (50)  NULL,
    [Note]        NVARCHAR (255) NULL,
    [Ordinal]     INT            NULL,
    PRIMARY KEY CLUSTERED ([EventID] ASC)
);

