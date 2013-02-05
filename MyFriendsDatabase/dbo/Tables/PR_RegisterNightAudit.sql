CREATE TABLE [dbo].[PR_RegisterNightAudit] (
    [s_ID]             NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [Audit_ID]         NVARCHAR (50)  NULL,
    [RegID]            NVARCHAR (50)  NULL,
    [fromDate]         SMALLDATETIME  NULL,
    [toDate]           SMALLDATETIME  NULL,
    [toDateNew]        SMALLDATETIME  NULL,
    [RepairOrCheckOut] BIT            NULL,
    [Note]             NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_RegisterNightAudit_Ls_NightAudit] FOREIGN KEY ([Audit_ID]) REFERENCES [dbo].[Ls_NightAudit] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_RegisterNightAudit_PR_Register] FOREIGN KEY ([RegID]) REFERENCES [dbo].[PR_Register] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

