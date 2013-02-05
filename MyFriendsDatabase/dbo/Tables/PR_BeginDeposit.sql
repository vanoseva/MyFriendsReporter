CREATE TABLE [dbo].[PR_BeginDeposit] (
    [s_ID]      NVARCHAR (50) CONSTRAINT [DF_PR_BeginDeposit_s_ID] DEFAULT (newid()) NOT NULL,
    [Object_ID] NVARCHAR (50) NULL,
    [Curr]      NVARCHAR (50) NULL,
    [Income]    MONEY         NULL,
    [OutCome]   MONEY         NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_BeginDeposit_LS_Currency] FOREIGN KEY ([Curr]) REFERENCES [dbo].[LS_Currency] ([i_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_BeginDeposit_LS_Objects] FOREIGN KEY ([Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

