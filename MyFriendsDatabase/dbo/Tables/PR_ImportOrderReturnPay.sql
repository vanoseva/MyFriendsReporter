CREATE TABLE [dbo].[PR_ImportOrderReturnPay] (
    [s_ID]          NVARCHAR (50)   CONSTRAINT [DF_PR_ImportOrderReturnPay_s_ID] DEFAULT (newid()) NOT NULL,
    [ImportOrderID] NVARCHAR (50)   NULL,
    [ImportID]      NVARCHAR (50)   NULL,
    [m_Pay]         MONEY           CONSTRAINT [DF_PR_ImportOrderReturnPay_m_Pay] DEFAULT ((0)) NULL,
    [IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [Note]          NVARCHAR (1024) NULL,
    CONSTRAINT [PK_PR_ImportOrderReturnPay] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ImportOrderReturnPay_LS_OrderReturns] FOREIGN KEY ([ImportOrderID]) REFERENCES [dbo].[LS_OrderReturns] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'So phieu nhap', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportOrderReturnPay', @level2type = N'COLUMN', @level2name = N'ImportID';

