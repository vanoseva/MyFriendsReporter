CREATE TABLE [dbo].[Ls_Menu] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_Ls_Menu_s_ID] DEFAULT (newid()) NOT NULL,
    [ID]            NVARCHAR (50)  NULL,
    [Name]          NVARCHAR (100) NULL,
    [Ordinal]       INT            NULL,
    [Note]          NVARCHAR (255) NULL,
    [iPriceDefault] TINYINT        NULL,
    CONSTRAINT [PK_Ls_Menu] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

