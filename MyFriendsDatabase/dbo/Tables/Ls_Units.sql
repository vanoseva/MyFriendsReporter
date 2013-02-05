CREATE TABLE [dbo].[Ls_Units] (
    [s_ID]    NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [s_Name]  NVARCHAR (255) NULL,
    [Ordinal] INT            NULL,
    [Note]    NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

