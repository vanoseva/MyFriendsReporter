CREATE TABLE [dbo].[PR_NumberOutcome_Commission] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF_PR_NumberOutcome_Commission_s_ID] DEFAULT (newid()) NOT NULL,
    [s_OutcomeID] NVARCHAR (50)  NULL,
    [s_NumberID]  NVARCHAR (50)  NULL,
    [m_Total]     MONEY          NULL,
    [s_Note]      NVARCHAR (500) NULL,
    CONSTRAINT [FK_PR_NumberOutcome_Commission_LS_Outcome] FOREIGN KEY ([s_OutcomeID]) REFERENCES [dbo].[LS_Outcome] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

