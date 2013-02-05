CREATE TABLE [dbo].[Ls_ImportReturns] (
    [s_ID]            NVARCHAR (50)   CONSTRAINT [DF__Ls_ImportR__s_ID__18B6AB08] DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50)   NULL,
    [i_ItemID]        INT             CONSTRAINT [DF__Ls_Import__i_Ite__19AACF41] DEFAULT ((0)) NULL,
    [dt_ImportDate]   SMALLDATETIME   NULL,
    [s_Object_ID]     NVARCHAR (50)   NULL,
    [s_Contact_ID]    NVARCHAR (50)   NULL,
    [s_EmployeeID]    NVARCHAR (50)   NULL,
    [f_VAT]           FLOAT (53)      CONSTRAINT [DF__Ls_Import__f_VAT__1A9EF37A] DEFAULT ((0)) NULL,
    [f_Discount]      FLOAT (53)      CONSTRAINT [DF__Ls_Import__f_Dis__1B9317B3] DEFAULT ((0)) NULL,
    [m_ImportTotal]   MONEY           CONSTRAINT [DF__Ls_Import__m_Imp__1C873BEC] DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50)   NULL,
    [s_Note]          NVARCHAR (3000) NULL,
    [s_InfoProduct]   NVARCHAR (3000) NULL,
    [s_SymbolInvoice] NVARCHAR (50)   NULL,
    [s_Invoice]       NVARCHAR (50)   NULL,
    [s_Word]          NVARCHAR (500)  NULL,
    [i_IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [m_Cost]          MONEY           CONSTRAINT [DF__Ls_Import__m_Cos__1D7B6025] DEFAULT ((0)) NULL,
    [m_Exchange]      MONEY           CONSTRAINT [DF__Ls_Import__m_Exc__1E6F845E] DEFAULT ((0)) NULL,
    [s_Name]          NVARCHAR (255)  NULL,
    [OrderID]         NVARCHAR (50)   NULL,
    [s_UserCreate]    NVARCHAR (50)   NULL,
    [dt_Create]       SMALLDATETIME   NULL,
    [s_UserEdit]      NVARCHAR (50)   NULL,
    [dt_LastUpdate]   SMALLDATETIME   NULL,
    [Curr]            NVARCHAR (50)   NULL,
    CONSTRAINT [PK_Ls_ImportReturns] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_ImportReturns_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lấy giá trị s_ID từ bảng Ls_Orders th nhập trả theo chứng từ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_ImportReturns', @level2type = N'COLUMN', @level2name = N'OrderID';

