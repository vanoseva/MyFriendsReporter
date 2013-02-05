CREATE TABLE [dbo].[Ls_GroupUser] (
    [s_ID]         NVARCHAR (50)  CONSTRAINT [DF_Ls_GroupUser_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Group_ID]   NVARCHAR (50)  NOT NULL,
    [s_Group_Name] NVARCHAR (50)  NULL,
    [i_Ordinal]    INT            NULL,
    [s_note]       NVARCHAR (255) NULL,
    CONSTRAINT [PK_Ls_GroupUser_1] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

