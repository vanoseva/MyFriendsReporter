CREATE TABLE [dbo].[PR_GuestInHouseNightAudit] (
    [s_ID]     NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [Audit_ID] NVARCHAR (50)  NULL,
    [RegID]    NVARCHAR (50)  NULL,
    [fromDate] SMALLDATETIME  NULL,
    [toDate]   SMALLDATETIME  NULL,
    [Note]     NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_GuestInHouseNightAudit_Ls_NightAudit] FOREIGN KEY ([Audit_ID]) REFERENCES [dbo].[Ls_NightAudit] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

