CREATE TABLE [dbo].[Ls_ImportConsign] (
    [s_ID]            NVARCHAR (50)   DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50)   NULL,
    [i_ItemID]        INT             DEFAULT ((0)) NULL,
    [dt_ImportDate]   SMALLDATETIME   NULL,
    [s_Object_ID]     NVARCHAR (50)   NULL,
    [s_EmployeeID]    NVARCHAR (50)   NULL,
    [f_VAT]           FLOAT (53)      DEFAULT ((0)) NULL,
    [f_Discount]      FLOAT (53)      DEFAULT ((0)) NULL,
    [m_ImportTotal]   MONEY           DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50)   NULL,
    [s_Note]          NVARCHAR (3000) NULL,
    [s_InfoProduct]   NVARCHAR (3000) NULL,
    [s_SymbolInvoice] NVARCHAR (50)   NULL,
    [s_Invoice]       NVARCHAR (50)   NULL,
    [s_Word]          NVARCHAR (500)  NULL,
    [i_IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [m_Cost]          MONEY           DEFAULT ((0)) NULL,
    [m_Exchange]      MONEY           DEFAULT ((0)) NULL,
    [dt_DateDealLine] SMALLDATETIME   NULL,
    CONSTRAINT [PK_Ls_ImportConsign] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_ImportConsign_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

