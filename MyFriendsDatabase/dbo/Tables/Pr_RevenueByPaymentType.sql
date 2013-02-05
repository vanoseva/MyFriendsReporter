CREATE TABLE [dbo].[Pr_RevenueByPaymentType] (
    [s_ID]            NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [TotalEndShiftID] NVARCHAR (50)  NULL,
    [Curr]            NVARCHAR (5)   NULL,
    [mCash]           MONEY          NULL,
    [mCard]           MONEY          NULL,
    [mTransfer]       MONEY          NULL,
    [mDebt]           MONEY          NULL,
    [mGotoRep]        MONEY          NULL,
    [CardTypeName]    NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_RevenueByPaymentType_Ls_TotalEndShift] FOREIGN KEY ([TotalEndShiftID]) REFERENCES [dbo].[Ls_TotalEndShift] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

