CREATE TABLE [dbo].[His_Deposit] (
    [EventID]     NVARCHAR (50)  NOT NULL,
    [s_ID]        NVARCHAR (50)  NULL,
    [DepositDate] SMALLDATETIME  NULL,
    [Register_ID] NVARCHAR (50)  NULL,
    [Curr]        NVARCHAR (50)  NULL,
    [Quantity]    MONEY          NULL,
    [UCreate]     NVARCHAR (50)  NULL,
    [dtCreate]    SMALLDATETIME  NULL,
    [UEdit]       NVARCHAR (50)  NULL,
    [dtEdit]      SMALLDATETIME  NULL,
    [Note]        NVARCHAR (250) NULL,
    CONSTRAINT [PK_His_Deposit] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

