CREATE TABLE [dbo].[PR_ConfirmConsign] (
    [s_ID]               NVARCHAR (50) CONSTRAINT [DF__PR_Confirm__s_ID__093F5D4E] DEFAULT (newid()) NOT NULL,
    [s_ConfirmConsignID] NVARCHAR (50) NOT NULL,
    [s_OrderDetailID]    NVARCHAR (50) NOT NULL,
    [f_Quantity]         FLOAT (53)    CONSTRAINT [DF__PR_Confir__f_Qua__0A338187] DEFAULT ((0)) NULL,
    [m_Price]            MONEY         CONSTRAINT [DF__PR_Confir__m_Pri__0B27A5C0] DEFAULT ((0)) NULL,
    [s_Unit]             NVARCHAR (50) NULL,
    [f_Convert]          FLOAT (53)    CONSTRAINT [DF__PR_Confir__f_Con__0C1BC9F9] DEFAULT ((0)) NULL,
    [IDSort]             NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_ConfirmConsign] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ConfirmConsign_Ls_ConfirmConsign] FOREIGN KEY ([s_ConfirmConsignID]) REFERENCES [dbo].[Ls_ConfirmConsign] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ConfirmConsign_PR_OrderConsignDetail] FOREIGN KEY ([s_OrderDetailID]) REFERENCES [dbo].[PR_OrderConsignDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

