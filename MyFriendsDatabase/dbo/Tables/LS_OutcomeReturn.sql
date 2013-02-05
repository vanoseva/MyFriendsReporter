CREATE TABLE [dbo].[LS_OutcomeReturn] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF__LS_Outcome__s_ID__2704CA5F] DEFAULT (newid()) NOT NULL,
    [s_NumberID]  NVARCHAR (50)   NULL,
    [dt_DayMonth] SMALLDATETIME   NULL,
    [s_Object_ID] NVARCHAR (50)   NULL,
    [i_Item_ID]   NVARCHAR (50)   NULL,
    [m_Total]     MONEY           CONSTRAINT [DF__LS_Outcom__m_Tot__27F8EE98] DEFAULT ((0)) NULL,
    [i_Payment]   INT             CONSTRAINT [DF__LS_Outcom__i_Pay__28ED12D1] DEFAULT ((1)) NULL,
    [s_Bank_ID]   NVARCHAR (50)   NULL,
    [b_isCash]    BIT             CONSTRAINT [DF__LS_Outcom__b_isC__29E1370A] DEFAULT ((1)) NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    [i_IDSort]    NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]      NVARCHAR (500)  NULL,
    [s_Receiver]  NVARCHAR (100)  NULL,
    [s_ImportID]  NVARCHAR (50)   NULL,
    CONSTRAINT [PK_LS_OutcomeReturn] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_OutcomeReturn_Ls_ImportReturns] FOREIGN KEY ([s_ImportID]) REFERENCES [dbo].[Ls_ImportReturns] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

