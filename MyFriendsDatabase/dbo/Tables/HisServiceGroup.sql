CREATE TABLE [dbo].[HisServiceGroup] (
    [EventID]        NVARCHAR (50)  CONSTRAINT [DF_HisServiceGroup_EventID] DEFAULT (newid()) NOT NULL,
    [s_ID]           NVARCHAR (50)  NULL,
    [ServiceType_ID] INT            NULL,
    [Group_ID]       NVARCHAR (50)  NULL,
    [s_Name]         NVARCHAR (255) NULL,
    [Note]           NVARCHAR (255) NULL,
    [Ordinal]        INT            NULL,
    CONSTRAINT [PK_HisServiceGroup] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

