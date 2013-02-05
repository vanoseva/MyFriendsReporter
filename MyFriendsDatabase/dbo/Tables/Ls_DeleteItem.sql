CREATE TABLE [dbo].[Ls_DeleteItem] (
    [s_ID]      NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [ProID]     NVARCHAR (50)  NULL,
    [ProCode]   NVARCHAR (50)  NULL,
    [ProName]   NVARCHAR (255) NULL,
    [Unit]      NVARCHAR (50)  NULL,
    [Qty]       FLOAT (53)     NULL,
    [Price]     MONEY          NULL,
    [DelTable]  NVARCHAR (50)  NULL,
    [OrderUser] NVARCHAR (50)  NULL,
    [DelUser]   NVARCHAR (50)  NULL,
    [DelDate]   SMALLDATETIME  NULL,
    [DelReason] NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

