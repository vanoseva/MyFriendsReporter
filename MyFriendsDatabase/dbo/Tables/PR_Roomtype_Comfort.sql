CREATE TABLE [dbo].[PR_Roomtype_Comfort] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF_PR_Roomtype_Comfort_s_ID] DEFAULT (newid()) NOT NULL,
    [Roomtype_ID] NVARCHAR (50)  NULL,
    [Comfort_ID]  NVARCHAR (50)  NULL,
    [Qty]         FLOAT (53)     NULL,
    [Price]       MONEY          NULL,
    [Note]        NVARCHAR (255) NULL,
    [Ordinal]     INT            NULL,
    CONSTRAINT [PK_PR_Roomtype_Comfort] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Roomtype_Comfort_Ls_Comfort] FOREIGN KEY ([Comfort_ID]) REFERENCES [dbo].[Ls_Comfort] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Roomtype_Comfort_Ls_RoomType] FOREIGN KEY ([Roomtype_ID]) REFERENCES [dbo].[Ls_RoomType] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

