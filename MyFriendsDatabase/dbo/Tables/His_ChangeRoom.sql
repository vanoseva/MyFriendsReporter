CREATE TABLE [dbo].[His_ChangeRoom] (
    [s_ID]       NVARCHAR (50) CONSTRAINT [DF_His_ChangeRoom_s_ID] DEFAULT (newid()) NOT NULL,
    [EventID]    NVARCHAR (50) NULL,
    [Invoice_ID] NVARCHAR (50) NULL,
    [RegIDNew]   NVARCHAR (50) NULL,
    [RegIDOld]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_His_ChangeRoom] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_His_ChangeRoom_PR_Events] FOREIGN KEY ([EventID]) REFERENCES [dbo].[PR_Events] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

