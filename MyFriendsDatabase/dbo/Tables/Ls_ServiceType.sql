CREATE TABLE [dbo].[Ls_ServiceType] (
    [i_ID]           INT            NOT NULL,
    [ServiceType_ID] NVARCHAR (50)  NULL,
    [s_Name]         NVARCHAR (255) NULL,
    [VAT]            FLOAT (53)     CONSTRAINT [DF_Ls_ServiceType_VAT] DEFAULT ((0)) NULL,
    [isSystem]       BIT            CONSTRAINT [DF_Ls_ServiceType_isSystem] DEFAULT ((0)) NULL,
    [Ordinal]        INT            NULL,
    [PPV]            FLOAT (53)     CONSTRAINT [DF_Ls_ServiceType_PPV] DEFAULT ((0)) NULL,
    [TaxOther]       FLOAT (53)     CONSTRAINT [DF_Ls_ServiceType_TaxOther] DEFAULT ((0)) NULL,
    [TaxTTDB]        FLOAT (53)     CONSTRAINT [DF_Ls_ServiceType_TaxTTDB] DEFAULT ((0)) NULL,
    [isTax]          BIT            CONSTRAINT [DF_Ls_ServiceType_isTax] DEFAULT ((0)) NULL,
    [isOther]        BIT            NULL,
    CONSTRAINT [PK_Ls_ServiceType] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

