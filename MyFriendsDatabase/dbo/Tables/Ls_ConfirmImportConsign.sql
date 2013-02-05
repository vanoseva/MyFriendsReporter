CREATE TABLE [dbo].[Ls_ConfirmImportConsign] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF__Ls_Confirm__s_ID__7993056A] DEFAULT (newid()) NOT NULL,
    [dt_DayMonth] SMALLDATETIME   NULL,
    [FullDate]    NVARCHAR (50)   CONSTRAINT [DF__Ls_Confir__FullD__7A8729A3] DEFAULT (getdate()) NULL,
    [m_Total]     MONEY           NULL,
    [i_Payment]   INT             NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    [IDSort]      NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Ls_ConfirmImportConsign] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

