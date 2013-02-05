CREATE TABLE [dbo].[PR_RoomRepair] (
    [s_ID]     NVARCHAR (50) CONSTRAINT [DF_PR_RoomRepair_s_ID] DEFAULT (newid()) NOT NULL,
    [Room_ID]  NVARCHAR (50) NULL,
    [fromDate] SMALLDATETIME NULL,
    [toDate]   SMALLDATETIME NULL,
    [Valid]    BIT           CONSTRAINT [DF_PR_RoomRepair_Valid] DEFAULT ((1)) NULL,
    [IDSort]   NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_RoomRepair] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_RoomRepair_Ls_Room] FOREIGN KEY ([Room_ID]) REFERENCES [dbo].[Ls_Room] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

