CREATE TABLE [dbo].[Ls_AreaTable] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_Ls_AreaTable_s_ID] DEFAULT (newid()) NOT NULL,
    [ID]            NVARCHAR (50)  NULL,
    [Name]          NVARCHAR (100) NULL,
    [Ordinal]       INT            NULL,
    [Note]          NVARCHAR (255) NULL,
    [Restaurant_ID] NVARCHAR (50)  NULL,
    [nX]            INT            NULL,
    [nY]            INT            NULL,
    [Menu_ID]       NVARCHAR (50)  NULL,
    [FontSize]      FLOAT (53)     NULL,
    CONSTRAINT [PK_Ls_AreaTable] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_AreaTable_Ls_Menu] FOREIGN KEY ([Menu_ID]) REFERENCES [dbo].[Ls_Menu] ([s_ID]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_Ls_AreaTable_Ls_Restaurant] FOREIGN KEY ([Restaurant_ID]) REFERENCES [dbo].[Ls_Restaurant] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

