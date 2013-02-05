CREATE TABLE [dbo].[HisIssue] (
    [EventID]  NVARCHAR (50)  CONSTRAINT [DF_HisIssue_EventID] DEFAULT (newid()) NOT NULL,
    [s_ID]     NVARCHAR (50)  NULL,
    [issue_ID] NVARCHAR (50)  NULL,
    [s_Name]   NVARCHAR (255) NULL,
    [Note]     NVARCHAR (255) NULL,
    [Ordinal]  INT            NULL,
    CONSTRAINT [PK_HisIssue] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

