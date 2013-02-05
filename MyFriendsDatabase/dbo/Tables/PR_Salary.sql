CREATE TABLE [dbo].[PR_Salary] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_PR_Salary_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Employee_ID] NVARCHAR (50)  NULL,
    [i_Year]        INT            NULL,
    [i_Month]       INT            NULL,
    [m_FixSalary]   MONEY          CONSTRAINT [DF_PR_Salary_m_FixSalary] DEFAULT ((0)) NULL,
    [n_Shift]       FLOAT (53)     CONSTRAINT [DF_PR_Salary_n_Shift] DEFAULT ((0)) NULL,
    [m_reward]      MONEY          CONSTRAINT [DF_PR_Salary_m_reward] DEFAULT ((0)) NULL,
    [f_PerReward]   FLOAT (53)     CONSTRAINT [DF_PR_Salary_f_PerReward] DEFAULT ((0)) NULL,
    [m_Sales]       MONEY          CONSTRAINT [DF_PR_Salary_m_Sales] DEFAULT ((0)) NULL,
    [f_Discount]    FLOAT (53)     CONSTRAINT [DF_PR_Salary_f_Discount] DEFAULT ((0)) NULL,
    [m_Salary]      MONEY          CONSTRAINT [DF_PR_Salary_m_Salary] DEFAULT ((0)) NULL,
    [m_borrow]      MONEY          CONSTRAINT [DF_PR_Salary_m_borrow] DEFAULT ((0)) NULL,
    [m_PaySalary]   MONEY          CONSTRAINT [DF_PR_Salary_m_PaySalary] DEFAULT ((0)) NULL,
    [m_LastMonth]   MONEY          CONSTRAINT [DF_PR_Salary_m_LastMonth] DEFAULT ((0)) NULL,
    [m_Instock]     MONEY          CONSTRAINT [DF_PR_Salary_m_Instock] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (255) NULL,
    CONSTRAINT [PK_PR_Salary] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Salary_LS_Employees] FOREIGN KEY ([s_Employee_ID]) REFERENCES [dbo].[LS_Employees] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'luong ca', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'm_FixSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'so ca lam viec', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'n_Shift';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tien thuong', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'm_reward';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% thuong', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'f_PerReward';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'luong thang', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'm_Salary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tam ung', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'm_borrow';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'chi tra luong', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'm_PaySalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cong no con lai cua thang truoc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'm_LastMonth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ton cuoi thang', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Salary', @level2type = N'COLUMN', @level2name = N'm_Instock';

