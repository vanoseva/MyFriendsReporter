﻿CREATE TABLE [dbo].[Ls_Import_Other] (
    [s_ID]            NVARCHAR (50)   DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50)   NULL,
    [i_Item_ID]       NVARCHAR (50)   NULL,
    [dt_ImportDate]   SMALLDATETIME   NULL,
    [s_Object_ID]     NVARCHAR (50)   NULL,
    [s_EmployeeID]    NVARCHAR (50)   NULL,
    [f_VAT]           FLOAT (53)      DEFAULT ((0)) NULL,
    [f_Discount]      FLOAT (53)      DEFAULT ((0)) NULL,
    [m_Discount]      MONEY           NULL,
    [m_ImportTotal]   MONEY           DEFAULT ((0)) NULL,
    [b_is_Cash]       BIT             DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50)   NULL,
    [s_Note]          NVARCHAR (3000) NULL,
    [s_InfoProduct]   NVARCHAR (3000) NULL,
    [s_SymbolInvoice] NVARCHAR (50)   NULL,
    [s_Invoice]       NVARCHAR (50)   NULL,
    [s_Word]          NVARCHAR (500)  NULL,
    [i_IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [m_Cost]          MONEY           DEFAULT ((0)) NULL,
    [m_Exchange]      MONEY           DEFAULT ((0)) NULL,
    [s_Name]          NVARCHAR (255)  NULL,
    [s_Purchase_ID]   NVARCHAR (50)   NULL,
    [dt_Create]       SMALLDATETIME   NULL,
    [dt_LastUpdate]   SMALLDATETIME   NULL,
    [s_UserCreate]    NVARCHAR (50)   NULL,
    [s_UserEdit]      NVARCHAR (50)   NULL,
    [PaymentTermID_s] NVARCHAR (50)   NULL,
    [b_isDept]        BIT             NULL,
    [b_isCash]        BIT             NULL,
    [b_isCashAll]     BIT             NULL,
    [b_isCashPart]    BIT             NULL,
    [b_isCashPrepay]  BIT             NULL,
    [m_Cash]          MONEY           NULL,
    [f_Per]           FLOAT (53)      NULL,
    [m_Per]           MONEY           NULL,
    [s_Char]          NVARCHAR (50)   NULL,
    [Curr]            NVARCHAR (50)   NULL,
    CONSTRAINT [PK_Ls_Import_Orther] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Import_Orther_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

