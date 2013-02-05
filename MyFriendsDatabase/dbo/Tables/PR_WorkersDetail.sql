CREATE TABLE [dbo].[PR_WorkersDetail] (
    [s_ID]            NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [WorkersNewID]    NVARCHAR (50)  NULL,
    [DayMonth]        DATETIME       NULL,
    [InTime]          SMALLDATETIME  NULL,
    [OutTime]         SMALLDATETIME  NULL,
    [TotalHour]       FLOAT (53)     NULL,
    [OverMin]         FLOAT (53)     NULL,
    [ShortMin]        FLOAT (53)     NULL,
    [isCheckOut]      BIT            NULL,
    [UserChangeOut]   NVARCHAR (255) NULL,
    [ReasonChangeOut] NVARCHAR (255) NULL,
    [ReasonVoid]      NVARCHAR (255) NULL,
    [isVoid]          BIT            NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_WorkersDetail_PR_WorkersNew] FOREIGN KEY ([WorkersNewID]) REFERENCES [dbo].[PR_WorkersNew] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

