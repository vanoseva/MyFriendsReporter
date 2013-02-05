CREATE TABLE [dbo].[rptDebtOver] (
    [ID]            NVARCHAR (50)  NULL,
    [Object_ID]     NVARCHAR (50)  NULL,
    [TotalIncome]   MONEY          NULL,
    [TotalOutcome]  MONEY          NULL,
    [Over1_30]      MONEY          NULL,
    [Over31_60]     MONEY          NULL,
    [Over61_90]     MONEY          NULL,
    [Over90]        MONEY          NULL,
    [TradeMonth]    MONEY          NULL,
    [TradeYear]     MONEY          NULL,
    [TradeLastYear] MONEY          NULL,
    [TradeAll]      MONEY          NULL,
    [Note]          NVARCHAR (255) NULL
);

