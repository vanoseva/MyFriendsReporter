CREATE TABLE [dbo].[Pr_TotalEndShiftDetail] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_Pr_TotalEndShiftDetail_s_ID] DEFAULT (newid()) NULL,
    [Shift_ID]        NVARCHAR (50)  NULL,
    [dtTimeOut]       SMALLDATETIME  NULL,
    [Product_ID]      NVARCHAR (50)  NULL,
    [ProductID]       NVARCHAR (50)  NULL,
    [Product_Name]    NVARCHAR (255) NULL,
    [Unit]            NVARCHAR (50)  NULL,
    [Qty]             FLOAT (53)     NULL,
    [Price]           MONEY          NULL,
    [IDSort]          NUMERIC (18)   NULL,
    [Note]            NVARCHAR (255) NULL,
    [EndPrice]        MONEY          NULL,
    [SubTotal]        MONEY          NULL,
    [TotalEndShiftID] NVARCHAR (50)  NULL,
    [OrderID]         NVARCHAR (50)  NULL,
    CONSTRAINT [FK_Pr_TotalEndShiftDetail_Ls_TotalEndShift] FOREIGN KEY ([TotalEndShiftID]) REFERENCES [dbo].[Ls_TotalEndShift] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

