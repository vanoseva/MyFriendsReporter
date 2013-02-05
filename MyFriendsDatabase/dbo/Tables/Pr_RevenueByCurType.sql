CREATE TABLE [dbo].[Pr_RevenueByCurType] (
    [s_ID]            NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [TotalEndShiftID] NVARCHAR (50) NULL,
    [CurType]         NVARCHAR (50) NULL,
    [Qty]             INT           NULL,
    [Cost]            MONEY         NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_RevenueByCurType_Ls_TotalEndShift] FOREIGN KEY ([TotalEndShiftID]) REFERENCES [dbo].[Ls_TotalEndShift] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

