CREATE TABLE [dbo].[Pr_NumberIncome] (
    [s_ID]       NVARCHAR (50)   CONSTRAINT [DF_Pr_NumberIncome_s_ID] DEFAULT (newid()) NOT NULL,
    [s_IncomeID] NVARCHAR (50)   NULL,
    [s_NumberID] NVARCHAR (50)   NULL,
    [m_Total]    MONEY           CONSTRAINT [DF_Pr_NumberIncome_m_Total] DEFAULT ((0)) NULL,
    [s_Note]     NVARCHAR (1024) NULL,
    [i_IDSort]   NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Pr_NumberIncome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_NumberIncome_LS_Income] FOREIGN KEY ([s_IncomeID]) REFERENCES [dbo].[LS_Income] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

