CREATE TABLE [dbo].[Ls_ConfirmConsign] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF__Ls_Confirm__s_ID__0662F0A3] DEFAULT (newid()) NOT NULL,
    [dt_DayMonth] SMALLDATETIME   NULL,
    [s_FullDate]  NVARCHAR (50)   CONSTRAINT [DF__Ls_Confir__FullD__075714DC] DEFAULT (getdate()) NULL,
    [m_Total]     MONEY           CONSTRAINT [DF_Ls_ConfirmConsign_m_Total] DEFAULT ((0)) NULL,
    [i_Payment]   INT             NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    [IDSort]      NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Ls_ConfirmConsign] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

