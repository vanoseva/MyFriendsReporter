CREATE TABLE [dbo].[Ls_NightAudit] (
    [s_ID]         NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [NumberID]     NVARCHAR (50)  NULL,
    [dayMonth]     SMALLDATETIME  NULL,
    [sHour]        NVARCHAR (50)  NULL,
    [fullDateTime] SMALLDATETIME  NULL,
    [Ordinal]      INT            NULL,
    [IsFinish]     BIT            NULL,
    [Note]         NVARCHAR (255) NULL,
    [UserCreate]   NVARCHAR (50)  NULL,
    [EmpCreate]    NVARCHAR (50)  NULL,
    [UserEdit]     NVARCHAR (50)  NULL,
    [dtEdit]       SMALLDATETIME  NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

