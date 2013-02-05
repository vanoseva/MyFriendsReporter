CREATE TABLE [dbo].[LS_Cashier] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_LS_Cashier_s_ID] DEFAULT (newid()) NOT NULL,
    [ID]            NVARCHAR (50)  NULL,
    [Name]          NVARCHAR (100) NULL,
    [Ordinal]       INT            NULL,
    [Note]          NVARCHAR (255) NULL,
    [Restaurant_ID] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_LS_Cashier] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Cashier_Ls_Restaurant] FOREIGN KEY ([Restaurant_ID]) REFERENCES [dbo].[Ls_Restaurant] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

