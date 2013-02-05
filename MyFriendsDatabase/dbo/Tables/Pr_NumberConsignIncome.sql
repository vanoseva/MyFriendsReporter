CREATE TABLE [dbo].[Pr_NumberConsignIncome] (
    [s_ID]       NVARCHAR (50)   CONSTRAINT [DF__Pr_NumberC__s_ID__695C9DA1] DEFAULT (newid()) NOT NULL,
    [s_IncomeID] NVARCHAR (50)   NULL,
    [s_NumberID] NVARCHAR (50)   NULL,
    [m_Total]    MONEY           CONSTRAINT [DF__Pr_Number__m_Tot__6A50C1DA] DEFAULT ((0)) NULL,
    [s_Note]     NVARCHAR (1024) NULL,
    [i_IDSort]   NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Pr_NumberConsignIncome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_NumberConsignIncome_LS_Income] FOREIGN KEY ([s_IncomeID]) REFERENCES [dbo].[LS_Income] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Pr_NumberConsignIncome_Ls_NumberConsignIncome] FOREIGN KEY ([s_NumberID]) REFERENCES [dbo].[Ls_NumberConsignIncome] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

