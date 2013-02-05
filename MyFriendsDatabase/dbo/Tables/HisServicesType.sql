CREATE TABLE [dbo].[HisServicesType] (
    [EventID]        NVARCHAR (50)  CONSTRAINT [DF_HisServicesType_EventID] DEFAULT (newid()) NOT NULL,
    [i_ID]           INT            NULL,
    [ServiceType_ID] NVARCHAR (50)  NULL,
    [s_Name]         NVARCHAR (255) NULL,
    [VAT]            FLOAT (53)     NULL,
    [Ordinal]        INT            NULL,
    [isSystem]       BIT            NULL,
    [PPV]            FLOAT (53)     NULL,
    [TaxOther]       FLOAT (53)     NULL,
    [TaxTTDB]        FLOAT (53)     NULL,
    [isTax]          BIT            NULL,
    [isOther]        BIT            NULL,
    CONSTRAINT [PK_HisServicesType] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

