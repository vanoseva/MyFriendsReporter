CREATE TABLE [dbo].[Ls_Comfort] (
    [s_ID]       NVARCHAR (50)  CONSTRAINT [DF_Ls_Comfort_s_ID] DEFAULT (newid()) NOT NULL,
    [Comfort_ID] NVARCHAR (50)  NULL,
    [s_Name]     NVARCHAR (255) NULL,
    [Unit]       NVARCHAR (50)  NULL,
    [Note]       NVARCHAR (255) NULL,
    [Ordinal]    INT            NULL,
    CONSTRAINT [PK_Ls_Comfort] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

