CREATE TABLE [dbo].[Ls_ServiceGroup] (
    [s_ID]           NVARCHAR (50)  CONSTRAINT [DF_Ls_ServiceGroup_s_ID] DEFAULT (newid()) NOT NULL,
    [ServiceType_ID] INT            NULL,
    [Group_ID]       NVARCHAR (50)  NULL,
    [s_Name]         NVARCHAR (255) NULL,
    [Note]           NVARCHAR (255) NULL,
    [Ordinal]        INT            NULL,
    CONSTRAINT [PK_Ls_ServiceGroup] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_ServiceGroup_Ls_ServiceType] FOREIGN KEY ([ServiceType_ID]) REFERENCES [dbo].[Ls_ServiceType] ([i_ID]) ON UPDATE CASCADE
);

