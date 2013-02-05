CREATE TABLE [dbo].[PR_ConfirmImportConsign] (
    [s_ID]                     NVARCHAR (50) CONSTRAINT [DF__PR_Confirm__s_ID__7C6F7215] DEFAULT (newid()) NOT NULL,
    [s_ConfirmImportConsignID] NVARCHAR (50) NULL,
    [s_ImportDetailID]         NVARCHAR (50) NULL,
    [f_Quantity]               FLOAT (53)    CONSTRAINT [DF__PR_Confir__f_Qua__7D63964E] DEFAULT ((0)) NULL,
    [m_Price]                  MONEY         CONSTRAINT [DF__PR_Confir__m_Pri__7E57BA87] DEFAULT ((0)) NULL,
    [s_Unit]                   NVARCHAR (50) NULL,
    [f_Convert]                FLOAT (53)    CONSTRAINT [DF__PR_Confir__f_Con__7F4BDEC0] DEFAULT ((0)) NULL,
    [IDSort]                   NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_ConfirmImportConsign] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ConfirmImportConsign_Ls_ConfirmImportConsign] FOREIGN KEY ([s_ConfirmImportConsignID]) REFERENCES [dbo].[Ls_ConfirmImportConsign] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ConfirmImportConsign_PR_ImportConsignDetail] FOREIGN KEY ([s_ImportDetailID]) REFERENCES [dbo].[PR_ImportConsignDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

