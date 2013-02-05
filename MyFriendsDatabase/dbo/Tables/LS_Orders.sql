CREATE TABLE [dbo].[LS_Orders] (
    [s_ID]                  NVARCHAR (50)   CONSTRAINT [DF_Orders_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]            NVARCHAR (50)   NULL,
    [s_Char]                NVARCHAR (50)   NULL,
    [i_ItemID]              NVARCHAR (50)   NULL,
    [dt_OrderDate]          SMALLDATETIME   NULL,
    [s_EmployeeID]          NVARCHAR (50)   NULL,
    [s_ObjectID]            NVARCHAR (50)   NULL,
    [s_DeliverableAddresss] NVARCHAR (500)  NULL,
    [s_PayabbleAddress]     NVARCHAR (500)  NULL,
    [s_ContactID]           NVARCHAR (50)   NULL,
    [m_Ordertotal]          MONEY           CONSTRAINT [DF_LS_Orders_m_Ordertotal] DEFAULT ((0)) NULL,
    [s_Note]                NVARCHAR (4000) NULL,
    [f_VAT]                 FLOAT (53)      CONSTRAINT [DF_Orders_i_VAT] DEFAULT ((0)) NULL,
    [m_VAT]                 MONEY           CONSTRAINT [DF_LS_Orders_m_VAT] DEFAULT ((0)) NULL,
    [f_Discount]            FLOAT (53)      CONSTRAINT [DF_Orders_f_CK] DEFAULT ((0)) NULL,
    [m_OrderTotalDiscount]  MONEY           CONSTRAINT [DF_LS_Orders_m_OrderTotalDiscount] DEFAULT ((0)) NULL,
    [f_Per]                 FLOAT (53)      CONSTRAINT [DF_Orders_f_hh] DEFAULT ((0)) NULL,
    [m_Per]                 MONEY           CONSTRAINT [DF_LS_Orders_m_Per] DEFAULT ((0)) NULL,
    [i_IDSort]              NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]                NVARCHAR (500)  NULL,
    [s_GroupProduct]        NVARCHAR (3000) NULL,
    [s_FullOrderDate]       NVARCHAR (50)   CONSTRAINT [DF_Orders_s_FullOrderDate] DEFAULT (getdate()) NULL,
    [s_SymbolInvoice]       NVARCHAR (50)   NULL,
    [s_Invoice]             NVARCHAR (50)   NULL,
    [m_Exchange]            MONEY           CONSTRAINT [DF_Orders_m_Exchange] DEFAULT ((0)) NULL,
    [s_PurchaseID]          NVARCHAR (50)   NULL,
    [s_Quote_ID]            NVARCHAR (50)   NULL,
    [b_isDiscount]          BIT             CONSTRAINT [DF_LS_Orders_b_isDiscount] DEFAULT ((0)) NULL,
    [b_isDiscountProduct]   BIT             CONSTRAINT [DF_LS_Orders_b_isDiscountProduct] DEFAULT ((0)) NULL,
    [i_TermID]              INT             NULL,
    [s_Creator]             NVARCHAR (50)   NULL,
    [s_Editor]              NVARCHAR (50)   NULL,
    [dt_Create]             SMALLDATETIME   NULL,
    [dt_Edit]               SMALLDATETIME   NULL,
    [f_Commission]          FLOAT (53)      CONSTRAINT [DF_LS_Orders_f_Commission] DEFAULT ((0)) NULL,
    [m_Commission]          MONEY           CONSTRAINT [DF_LS_Orders_m_Commission] DEFAULT ((0)) NULL,
    [b_isDept]              BIT             CONSTRAINT [DF_LS_Orders_b_isDept] DEFAULT ((0)) NULL,
    [b_isCash]              BIT             CONSTRAINT [DF_LS_Orders_b_isCash] DEFAULT ((0)) NULL,
    [b_isCashAll]           BIT             CONSTRAINT [DF_LS_Orders_b_isCashAll] DEFAULT ((0)) NULL,
    [b_isCashPart]          BIT             CONSTRAINT [DF_LS_Orders_b_isCashPart] DEFAULT ((0)) NULL,
    [b_isCashPrepay]        BIT             CONSTRAINT [DF_LS_Orders_b_isCashPrepay] DEFAULT ((0)) NULL,
    [m_Cash]                MONEY           CONSTRAINT [DF_LS_Orders_m_Cash] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Orders_LS_Objects] FOREIGN KEY ([s_ObjectID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_Orders_Ls_PaymentOrder] FOREIGN KEY ([i_ItemID]) REFERENCES [dbo].[Ls_PaymentOrder] ([i_ID]) ON DELETE SET NULL ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% hoa hồng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Orders', @level2type = N'COLUMN', @level2name = N'f_Commission';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền hoa hồng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Orders', @level2type = N'COLUMN', @level2name = N'm_Commission';

