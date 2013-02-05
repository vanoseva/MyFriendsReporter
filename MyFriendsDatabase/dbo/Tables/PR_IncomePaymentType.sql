CREATE TABLE [dbo].[PR_IncomePaymentType] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF_PR_IncomePaymentType_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Income_ID] NVARCHAR (50)  NULL,
    [m_Total]     MONEY          CONSTRAINT [DF_PR_IncomePaymentType_m_Total] DEFAULT ((0)) NULL,
    [i_Currency]  NVARCHAR (50)  NULL,
    [m_Exchange]  MONEY          CONSTRAINT [DF_PR_IncomePaymentType_m_Exchange] DEFAULT ((1)) NULL,
    [s_Note]      NVARCHAR (500) NULL,
    [i_IDSort]    NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_IncomePaymentType] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_IncomePaymentType_LS_Income] FOREIGN KEY ([s_Income_ID]) REFERENCES [dbo].[LS_Income] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_IncomePaymentType', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số phiếu thu, lấy từ s_ID của LS_Income', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_IncomePaymentType', @level2type = N'COLUMN', @level2name = N's_Income_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền thu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_IncomePaymentType', @level2type = N'COLUMN', @level2name = N'm_Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đơn vị tiền tệ, lấy từ i_ID của LS_Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_IncomePaymentType', @level2type = N'COLUMN', @level2name = N'i_Currency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tỷ giá của đơn vị tiền tệ so với đơn vị tiền tệ hệ thống tại thời điểm tạo, mặc định tỷ giá là 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_IncomePaymentType', @level2type = N'COLUMN', @level2name = N'm_Exchange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ghi chú', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_IncomePaymentType', @level2type = N'COLUMN', @level2name = N's_Note';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thứ tự dòng tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_IncomePaymentType', @level2type = N'COLUMN', @level2name = N'i_IDSort';

