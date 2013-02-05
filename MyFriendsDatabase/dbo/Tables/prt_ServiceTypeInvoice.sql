﻿CREATE TABLE [dbo].[prt_ServiceTypeInvoice] (
    [s_ID]             NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [Inv_ID]           NVARCHAR (50)  NULL,
    [dtOrder]          SMALLDATETIME  NULL,
    [ServiceType_ID]   INT            NULL,
    [ServiceType_Name] NVARCHAR (255) NULL,
    [Price]            MONEY          NULL,
    [Qty]              FLOAT (53)     NULL,
    [VAT]              FLOAT (53)     NULL,
    [TTDB]             FLOAT (53)     NULL,
    [PPV]              FLOAT (53)     NULL,
    [VAT_Amonut]       MONEY          NULL,
    [TTDB_Amount]      MONEY          NULL,
    [PPV_Amount]       MONEY          NULL,
    [Total]            MONEY          NULL,
    [Note]             NVARCHAR (255) NULL,
    [Ordinal]          INT            NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [prt_ServiceTypeInvoice_tmp_Invoices] FOREIGN KEY ([Inv_ID]) REFERENCES [dbo].[tmp_Invoices] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

