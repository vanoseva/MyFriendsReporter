CREATE TABLE [dbo].[Ls_ShiftNew] (
    [s_ID]            NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [ShiftAlias]      NVARCHAR (50)  NULL,
    [ShiftName]       NVARCHAR (255) NULL,
    [ShiftNote]       NVARCHAR (500) NULL,
    [StartTime]       SMALLDATETIME  NULL,
    [EndTime]         SMALLDATETIME  NULL,
    [BreakTime]       INT            NULL,
    [isSun]           BIT            NULL,
    [isMon]           BIT            NULL,
    [isTue]           BIT            NULL,
    [isWed]           BIT            NULL,
    [isThu]           BIT            NULL,
    [isFri]           BIT            NULL,
    [isSat]           BIT            NULL,
    [OverTime]        INT            NULL,
    [ShortTime]       INT            NULL,
    [HalfDayHourTo]   INT            NULL,
    [HalfDayHourFrom] INT            NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

