CREATE TABLE [dbo].[Ls_Timer] (
    [s_ID]     NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [fromTime] SMALLDATETIME  NULL,
    [toTime]   SMALLDATETIME  NULL,
    [Note]     NVARCHAR (255) NULL,
    [Ordinal]  INT            NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

