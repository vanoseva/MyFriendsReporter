CREATE TABLE [dbo].[PR_AreaMenu] (
    [s_ID]    NVARCHAR (50)  CONSTRAINT [DF_PR_AreaMenu_s_ID] DEFAULT (newid()) NOT NULL,
    [Area_ID] NVARCHAR (50)  NULL,
    [Menu_ID] NVARCHAR (50)  NULL,
    [Ordinal] INT            NULL,
    [Note]    NVARCHAR (255) NULL,
    CONSTRAINT [PK_PR_AreaMenu] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_AreaMenu_Ls_AreaTable] FOREIGN KEY ([Area_ID]) REFERENCES [dbo].[Ls_AreaTable] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

