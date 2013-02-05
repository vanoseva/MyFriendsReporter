CREATE TABLE [dbo].[Pr_Deposit] (
    [s_ID]         NVARCHAR (50)  CONSTRAINT [DF__Pr_Deposit__s_ID__5A8F5B5D] DEFAULT (newid()) NOT NULL,
    [DepositDate]  SMALLDATETIME  NULL,
    [Register_ID]  NVARCHAR (50)  NULL,
    [Curr]         NVARCHAR (50)  NULL,
    [Quantity]     MONEY          NULL,
    [UCreate]      NVARCHAR (50)  NULL,
    [dtCreate]     SMALLDATETIME  NULL,
    [UEdit]        NVARCHAR (50)  NULL,
    [dtEdit]       SMALLDATETIME  NULL,
    [Note]         NVARCHAR (250) NULL,
    [BK_ID]        NVARCHAR (50)  NULL,
    [CaLV]         NVARCHAR (50)  NULL,
    [Register_OLD] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Pr_Deposit] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_Deposit_PR_Register] FOREIGN KEY ([Register_ID]) REFERENCES [dbo].[PR_Register] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

