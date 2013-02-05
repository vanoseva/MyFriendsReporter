CREATE TABLE [dbo].[Pr_NumberConsignOutcome] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF__Pr_NumberC__s_ID__6C390A4C] DEFAULT (newid()) NOT NULL,
    [s_OutcomeID] NVARCHAR (50)   NULL,
    [s_NumberID]  NVARCHAR (50)   NULL,
    [m_Total]     MONEY           CONSTRAINT [DF__Pr_Number__m_Tot__6D2D2E85] DEFAULT ((0)) NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    [i_IDSort]    NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Pr_NumberConsignOutcome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_NumberConsignOutcome_Ls_NumberConsignOutcome] FOREIGN KEY ([s_NumberID]) REFERENCES [dbo].[Ls_NumberConsignOutcome] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Pr_NumberConsignOutcome_LS_Outcome] FOREIGN KEY ([s_OutcomeID]) REFERENCES [dbo].[LS_Outcome] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

