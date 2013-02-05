CREATE TABLE [dbo].[HisComfort] (
    [EventID]    NVARCHAR (50)  CONSTRAINT [DF_HisComfort_EventID] DEFAULT (newid()) NOT NULL,
    [s_ID]       NVARCHAR (50)  NULL,
    [Comfort_ID] NVARCHAR (50)  NULL,
    [s_Name]     NVARCHAR (255) NULL,
    [Unit]       NVARCHAR (50)  NULL,
    [Note]       NVARCHAR (255) NULL,
    [Ordinal]    INT            NULL,
    CONSTRAINT [PK_HisComfort] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

