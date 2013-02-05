CREATE TABLE [dbo].[HisPartner] (
    [EventID]         NVARCHAR (50)  CONSTRAINT [DF_HisPartner_EventID] DEFAULT (N'(newid())') NOT NULL,
    [s_ID]            NVARCHAR (50)  NULL,
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
    [Ordinal]         INT            NOT NULL,
    [BeginDebt]       MONEY          NULL,
    [CurExt]          MONEY          NULL,
    [Valid]           BIT            NULL,
    [Phone]           NVARCHAR (50)  NULL,
    CONSTRAINT [PK_HisPartner] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

