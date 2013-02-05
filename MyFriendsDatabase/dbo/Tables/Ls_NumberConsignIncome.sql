CREATE TABLE [dbo].[Ls_NumberConsignIncome] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF__Ls_NumberC__s_ID__5832119F] DEFAULT (newid()) NOT NULL,
    [s_NumberID]  NVARCHAR (50)   NULL,
    [dt_DayMonth] SMALLDATETIME   NULL,
    [s_Object_ID] NVARCHAR (50)   NULL,
    [m_Total]     MONEY           CONSTRAINT [DF__Ls_Number__m_Tot__592635D8] DEFAULT ((0)) NULL,
    [m_WIncome]   MONEY           CONSTRAINT [DF__Ls_Number__m_WIn__5A1A5A11] DEFAULT ((0)) NULL,
    [i_IDSort]    NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    CONSTRAINT [PK_Ls_NumberConsignIncome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_NumberConsignIncome_Ls_ConfirmConsign] FOREIGN KEY ([s_NumberID]) REFERENCES [dbo].[Ls_ConfirmConsign] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

