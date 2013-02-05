CREATE TABLE [dbo].[Ls_NumberConsignOutcome] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF__Ls_NumberC__s_ID__5C02A283] DEFAULT (newid()) NOT NULL,
    [s_NumberID]  NVARCHAR (50)   NULL,
    [dt_DayMonth] SMALLDATETIME   NULL,
    [s_Object_ID] NVARCHAR (50)   NULL,
    [m_Total]     MONEY           CONSTRAINT [DF__Ls_Number__m_Tot__5CF6C6BC] DEFAULT ((0)) NULL,
    [m_WOutcome]  MONEY           CONSTRAINT [DF__Ls_Number__m_WOu__5DEAEAF5] DEFAULT ((0)) NULL,
    [i_IDSort]    NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    CONSTRAINT [PK_Ls_NumberConsignOutcome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_NumberConsignOutcome_Ls_ConfirmImportConsign] FOREIGN KEY ([s_NumberID]) REFERENCES [dbo].[Ls_ConfirmImportConsign] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

