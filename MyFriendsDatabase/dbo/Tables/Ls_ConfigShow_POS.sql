CREATE TABLE [dbo].[Ls_ConfigShow_POS] (
    [odinal]              INT           NOT NULL,
    [name]                NVARCHAR (50) NULL,
    [bA]                  INT           NULL,
    [bB]                  INT           NULL,
    [bR]                  INT           NULL,
    [bG]                  INT           NULL,
    [fA]                  INT           NULL,
    [fB]                  INT           NULL,
    [fR]                  INT           NULL,
    [fG]                  INT           NULL,
    [fix]                 NVARCHAR (50) NULL,
    [Maunen]              NVARCHAR (50) NULL,
    [Mauchu]              NVARCHAR (50) NULL,
    [OtherLang]           NVARCHAR (50) NULL,
    [FontColorName]       NVARCHAR (50) NULL,
    [BackgroundColorName] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Ls_configShow_POS] PRIMARY KEY CLUSTERED ([odinal] ASC)
);

