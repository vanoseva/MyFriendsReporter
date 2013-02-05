CREATE TABLE [dbo].[PR_Debt] (
    [s_ID]       NVARCHAR (50)   CONSTRAINT [DF_PR_Debt_s_ID] DEFAULT (newid()) NOT NULL,
    [NumberID]   NVARCHAR (50)   NULL,
    [DayMonth]   DATETIME        NULL,
    [CreateDate] DATETIME        NULL,
    [Object_ID]  NVARCHAR (50)   NULL,
    [OrderID]    NVARCHAR (50)   NULL,
    [Qty]        FLOAT (53)      NULL,
    [nDay]       FLOAT (53)      NULL,
    [Price]      MONEY           CONSTRAINT [DF_PR_Debt_Price] DEFAULT ((0)) NULL,
    [IDSort]     NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [Note]       NVARCHAR (1024) NULL,
    [isFinish]   BIT             CONSTRAINT [DF_PR_Debt_isFinish] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_PR_Debt] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

