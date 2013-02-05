CREATE TABLE [dbo].[PR_OutcomePaymentType] (
    [s_ID]         NVARCHAR (50)  CONSTRAINT [DF_PR_OutcomePaymentType_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Outcome_ID] NVARCHAR (50)  NULL,
    [m_Total]      MONEY          NULL,
    [i_Currency]   NVARCHAR (50)  NULL,
    [m_Exchange]   MONEY          NULL,
    [s_Note]       NVARCHAR (500) NULL,
    [i_IDSort]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_OutcomePaymentType] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OutcomePaymentType_LS_Outcome] FOREIGN KEY ([s_Outcome_ID]) REFERENCES [dbo].[LS_Outcome] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

