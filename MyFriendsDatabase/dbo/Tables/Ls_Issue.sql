CREATE TABLE [dbo].[Ls_Issue] (
    [s_ID]     NVARCHAR (50)  CONSTRAINT [DF_Ls_Issue_s_ID] DEFAULT (newid()) NOT NULL,
    [issue_ID] NVARCHAR (50)  NULL,
    [s_Name]   NVARCHAR (255) NULL,
    [Note]     NVARCHAR (255) NULL,
    [Ordinal]  INT            NULL,
    CONSTRAINT [PK_Ls_Issue] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

