CREATE TABLE [dbo].[LS_ObjectGroups] (
    [s_ID]             NVARCHAR (50)  CONSTRAINT [DF_LS_ObjectGroups_s_ID] DEFAULT (newid()) NOT NULL,
    [s_ObjectGroup_ID] NVARCHAR (50)  NULL,
    [s_Name]           NVARCHAR (255) NULL,
    [s_Note]           NVARCHAR (500) NULL,
    [i_Ordinal]        NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_LS_ObjectGroups] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

