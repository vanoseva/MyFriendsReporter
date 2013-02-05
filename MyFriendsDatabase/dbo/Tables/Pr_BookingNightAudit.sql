CREATE TABLE [dbo].[Pr_BookingNightAudit] (
    [s_ID]        NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [Audit_ID]    NVARCHAR (50)  NULL,
    [BK_ID]       NVARCHAR (50)  NULL,
    [NumberID]    NVARCHAR (50)  NULL,
    [CusName]     NVARCHAR (255) NULL,
    [Deposit]     MONEY          NULL,
    [fromDate]    SMALLDATETIME  NULL,
    [toDate]      SMALLDATETIME  NULL,
    [fromDateNew] SMALLDATETIME  NULL,
    [toDateNew]   SMALLDATETIME  NULL,
    [DelOrNoShow] BIT            NULL,
    [Note]        NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_BookingNightAutdi_Ls_NightAudit] FOREIGN KEY ([Audit_ID]) REFERENCES [dbo].[Ls_NightAudit] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

