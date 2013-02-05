CREATE TABLE [dbo].[Ls_TotalEndShift] (
    [s_ID]      NVARCHAR (50) CONSTRAINT [DF_Ls_TotalEndShift_s_ID] DEFAULT (newid()) NOT NULL,
    [Shift_ID]  NVARCHAR (50) NULL,
    [UID]       NVARCHAR (50) NULL,
    [dtTimeIn]  SMALLDATETIME NULL,
    [dtTimeOut] SMALLDATETIME NULL,
    [mBalance]  MONEY         NULL,
    [mCash]     MONEY         NULL,
    [mCard]     MONEY         NULL,
    [mTransfer] MONEY         NULL,
    [mDebt]     MONEY         NULL,
    [mGotoRep]  MONEY         NULL,
    [Curr]      NVARCHAR (50) NULL,
    [Exchange]  FLOAT (53)    NULL,
    CONSTRAINT [PK_Ls_TotalEndShift] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

