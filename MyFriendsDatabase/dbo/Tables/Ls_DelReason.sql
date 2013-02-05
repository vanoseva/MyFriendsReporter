CREATE TABLE [dbo].[Ls_DelReason] (
    [s_ID]       NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [ReasonID]   NVARCHAR (50)  NULL,
    [ReasonName] NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

