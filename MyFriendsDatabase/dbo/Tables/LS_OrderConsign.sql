CREATE TABLE [dbo].[LS_OrderConsign] (
    [s_ID]            NVARCHAR (50)   DEFAULT (newid()) NOT NULL,
    [s_Order_ID]      NVARCHAR (50)   NULL,
    [i_ItemID]        INT             DEFAULT ((0)) NULL,
    [dt_OrderDate]    SMALLDATETIME   NULL,
    [s_EmployeeID]    NVARCHAR (50)   NULL,
    [s_Object_ID]     NVARCHAR (50)   NULL,
    [m_Ordertotal]    MONEY           DEFAULT ((0)) NULL,
    [s_Note]          NVARCHAR (4000) NULL,
    [i_VAT]           INT             DEFAULT ((0)) NULL,
    [f_Discount]      FLOAT (53)      DEFAULT ((0)) NULL,
    [f_Per]           FLOAT (53)      DEFAULT ((0)) NULL,
    [i_IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]          NVARCHAR (500)  NULL,
    [s_GroupProduct]  NVARCHAR (3000) NULL,
    [s_FullOrderDate] NVARCHAR (50)   DEFAULT (getdate()) NULL,
    [s_SymbolInvoice] NVARCHAR (50)   NULL,
    [s_Invoice]       NVARCHAR (50)   NULL,
    [m_Exchange]      MONEY           DEFAULT ((0)) NULL,
    [dt_DateDealLine] SMALLDATETIME   NULL,
    CONSTRAINT [PK_LS_OrderConsign] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_OrderConsign_LS_Objects] FOREIGN KEY ([s_Order_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

