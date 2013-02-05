CREATE TABLE [dbo].[LS_OrderReturns] (
    [s_ID]            NVARCHAR (50)   CONSTRAINT [DF__LS_OrderRe__s_ID__0880433F] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]      NVARCHAR (50)   NULL,
    [s_Store_ID]      NVARCHAR (50)   CONSTRAINT [DF__LS_OrderR__i_Ite__09746778] DEFAULT ((0)) NULL,
    [dt_OrderDate]    SMALLDATETIME   NULL,
    [s_EmployeeID]    NVARCHAR (50)   NULL,
    [s_Object_ID]     NVARCHAR (50)   NULL,
    [m_Ordertotal]    MONEY           CONSTRAINT [DF_LS_OrderReturns_m_Ordertotal] DEFAULT ((0)) NULL,
    [s_Note]          NVARCHAR (4000) NULL,
    [i_VAT]           INT             CONSTRAINT [DF__LS_OrderR__i_VAT__0A688BB1] DEFAULT ((0)) NULL,
    [f_Discount]      FLOAT (53)      CONSTRAINT [DF__LS_OrderR__f_Dis__0B5CAFEA] DEFAULT ((0)) NULL,
    [f_Per]           FLOAT (53)      CONSTRAINT [DF__LS_OrderR__f_Per__0C50D423] DEFAULT ((0)) NULL,
    [i_IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]          NVARCHAR (500)  NULL,
    [s_GroupProduct]  NVARCHAR (3000) NULL,
    [s_FullOrderDate] NVARCHAR (50)   CONSTRAINT [DF__LS_OrderR__s_Ful__0D44F85C] DEFAULT (getdate()) NULL,
    [s_SymbolInvoice] NVARCHAR (50)   NULL,
    [s_Invoice]       NVARCHAR (50)   NULL,
    [m_Exchange]      MONEY           CONSTRAINT [DF__LS_OrderR__m_Exc__0E391C95] DEFAULT ((0)) NULL,
    [ImportID]        NVARCHAR (50)   NULL,
    [s_UserCreate]    NVARCHAR (50)   NULL,
    [dt_Create]       SMALLDATETIME   NULL,
    [s_UserEdit]      NVARCHAR (50)   NULL,
    [dt_LastUpdate]   SMALLDATETIME   NULL,
    [Curr]            NVARCHAR (50)   NULL,
    CONSTRAINT [PK_LS_OrderReturns] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_OrderReturns_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_OrderReturns_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nếu xuat tra theo chứng từ thì lấy s_ID của LS_Import_ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_OrderReturns', @level2type = N'COLUMN', @level2name = N'ImportID';

