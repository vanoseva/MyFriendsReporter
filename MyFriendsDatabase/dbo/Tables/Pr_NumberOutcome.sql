CREATE TABLE [dbo].[Pr_NumberOutcome] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF_Pr_NumberOutcome_s_ID] DEFAULT (newid()) NOT NULL,
    [s_OutcomeID] NVARCHAR (50)   NULL,
    [s_NumberID]  NVARCHAR (50)   NULL,
    [m_Total]     MONEY           CONSTRAINT [DF_Pr_NumberOutcome_m_Total] DEFAULT ((0)) NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    [i_IDSort]    NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Pr_NumberOutcome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_NumberOutcome_LS_Outcome] FOREIGN KEY ([s_OutcomeID]) REFERENCES [dbo].[LS_Outcome] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'id được lấy từ cột s_ID của Ls_Outcome', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Pr_NumberOutcome', @level2type = N'COLUMN', @level2name = N's_OutcomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'id được lấy từ cột s_ID của Ls_Imports', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Pr_NumberOutcome', @level2type = N'COLUMN', @level2name = N's_NumberID';

