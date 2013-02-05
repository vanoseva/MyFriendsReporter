CREATE TABLE [dbo].[Ls_ObjectType] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_Ls_ObjectType_s_ID] DEFAULT (newid()) NOT NULL,
    [s_ObjectType_ID] NVARCHAR (50)  NULL,
    [s_Name]          NVARCHAR (255) NULL,
    [s_Note]          NVARCHAR (255) NULL,
    [i_Ordinal]       INT            NULL,
    [NameEng]         NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_ObjectType] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

