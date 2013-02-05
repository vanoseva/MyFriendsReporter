CREATE TABLE [dbo].[rptDetailNumber] (
    [ID]         NVARCHAR (50)  NULL,
    [OrderID]    NVARCHAR (50)  NULL,
    [DayMonth]   SMALLDATETIME  NULL,
    [NumberID]   NVARCHAR (50)  NULL,
    [Total]      MONEY          NULL,
    [Note]       NVARCHAR (255) NULL,
    [Instock]    MONEY          NULL,
    [TotalOrder] MONEY          NULL,
    [Curr]       NVARCHAR (50)  NULL,
    [Exchange]   FLOAT (53)     NULL
);

