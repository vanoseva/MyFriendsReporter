CREATE TABLE [dbo].[tblBalanceBeginShift] (
    [Shift_ID]    NVARCHAR (50) NULL,
    [CurrentDate] SMALLDATETIME NULL,
    [ServerDate]  SMALLDATETIME NULL,
    [Balance]     MONEY         NULL,
    [isRunning]   BIT           NULL,
    [UID]         NVARCHAR (50) NULL
);

