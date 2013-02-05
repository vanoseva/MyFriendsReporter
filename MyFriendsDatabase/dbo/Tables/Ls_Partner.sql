CREATE TABLE [dbo].[Ls_Partner] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_Ls_Partner_s_ID] DEFAULT (newid()) NOT NULL,
    [Partner_ID]      NVARCHAR (50)  NULL,
    [s_Name]          NVARCHAR (255) NULL,
    [NameTax]         NVARCHAR (255) NULL,
    [Address]         NVARCHAR (255) NULL,
    [AddressTax]      NVARCHAR (255) NULL,
    [TaxNo]           NVARCHAR (50)  NULL,
    [Fax]             NVARCHAR (50)  NULL,
    [Email]           NVARCHAR (50)  NULL,
    [Contact]         NVARCHAR (255) NULL,
    [ContactPhone]    NVARCHAR (50)  NULL,
    [ContactPosition] NVARCHAR (50)  NULL,
    [Note]            NVARCHAR (255) NULL,
    [Ordinal]         NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [BeginDebt]       MONEY          NULL,
    [CurExt]          MONEY          NULL,
    [Valid]           BIT            CONSTRAINT [DF_Ls_Partner_Valid] DEFAULT ((1)) NULL,
    [Phone]           NVARCHAR (50)  NULL,
    [payment_ID]      NVARCHAR (50)  NULL,
    [isDebt]          BIT            NULL,
    CONSTRAINT [PK_Ls_Partner] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Partner_Ls_PaymentTerm] FOREIGN KEY ([payment_ID]) REFERENCES [dbo].[LS_PaymentTerm] ([s_ID]) ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Partner', @level2type = N'COLUMN', @level2name = N's_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên hop dong', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Partner', @level2type = N'COLUMN', @level2name = N'NameTax';

