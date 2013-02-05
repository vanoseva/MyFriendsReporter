CREATE TABLE [dbo].[PR_OrderImportReturnPay] (
    [s_ID]          NVARCHAR (50)   CONSTRAINT [DF_PR_OrderImportReturnPay_s_ID] DEFAULT (newid()) NOT NULL,
    [OrderImportID] NVARCHAR (50)   NULL,
    [OrderID]       NVARCHAR (50)   NULL,
    [m_Pay]         MONEY           CONSTRAINT [DF_PR_OrderImportReturnPay_m_Pay] DEFAULT ((0)) NULL,
    [IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [Note]          NVARCHAR (1024) NULL,
    CONSTRAINT [PK_PR_OrderImportReturnPay] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderImportReturnPay_Ls_ImportReturns] FOREIGN KEY ([OrderImportID]) REFERENCES [dbo].[Ls_ImportReturns] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'So phieu xuat', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_OrderImportReturnPay', @level2type = N'COLUMN', @level2name = N'OrderID';

