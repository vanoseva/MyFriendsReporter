CREATE TABLE [dbo].[LS_IncomeReturn] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF__LS_IncomeR__s_ID__2BC97F7C] DEFAULT (newid()) NOT NULL,
    [s_NumberID]  NVARCHAR (50)   NULL,
    [dt_DayMonth] SMALLDATETIME   NULL,
    [s_Object_ID] NVARCHAR (50)   NULL,
    [i_Item_ID]   NVARCHAR (50)   NULL,
    [m_Total]     MONEY           CONSTRAINT [DF__LS_Income__m_Tot__2CBDA3B5] DEFAULT ((0)) NULL,
    [i_Payment]   INT             CONSTRAINT [DF__LS_Income__i_Pay__2DB1C7EE] DEFAULT ((1)) NULL,
    [s_Bank_ID]   NVARCHAR (50)   NULL,
    [b_isCash]    BIT             CONSTRAINT [DF__LS_Income__b_isC__2EA5EC27] DEFAULT ((1)) NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    [i_IDSort]    NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]      NVARCHAR (500)  NULL,
    [s_Payer]     NVARCHAR (100)  NULL,
    [s_OrderID]   NVARCHAR (50)   NULL,
    CONSTRAINT [PK_LS_IncomeReturn] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_IncomeReturn_LS_OrderReturns] FOREIGN KEY ([s_OrderID]) REFERENCES [dbo].[LS_OrderReturns] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_IncomeReturn_LS_OtherIncome] FOREIGN KEY ([i_Item_ID]) REFERENCES [dbo].[LS_OtherIncome] ([i_ID])
);

