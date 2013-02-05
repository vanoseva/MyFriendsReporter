CREATE TABLE [dbo].[PR_Quote] (
    [s_ID]         NVARCHAR (50)  CONSTRAINT [DF_PR_Quote_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]   NVARCHAR (50)  NULL,
    [s_Product_ID] NVARCHAR (50)  NULL,
    [s_Unit]       NVARCHAR (50)  NULL,
    [f_Exchange]   FLOAT (53)     NULL,
    [f_Quantity]   FLOAT (53)     CONSTRAINT [DF_PR_Quote_f_Quantity] DEFAULT ((0)) NULL,
    [m_Price]      MONEY          CONSTRAINT [DF_PR_Quote_m_Price] DEFAULT ((0)) NULL,
    [f_Discount]   FLOAT (53)     CONSTRAINT [DF_PR_Quote_f_Discount] DEFAULT ((0)) NULL,
    [m_Discount]   MONEY          CONSTRAINT [DF_PR_Quote_m_Discount] DEFAULT ((0)) NULL,
    [i_IDSort]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [s_Note]       NVARCHAR (500) NULL,
    [f_VAT]        FLOAT (53)     NULL,
    CONSTRAINT [PK_PR_Quote] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Quote_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Quote_Ls_Quote] FOREIGN KEY ([s_Order_ID]) REFERENCES [dbo].[Ls_Quote] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự phát sinh.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã phiếu báo giá, lấy từ s_ID của LS_Quote', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N's_Order_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã hàng, lấy từ s_ID của LS_Products', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N's_Product_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Đơn vị tính hàng báo giá', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N's_Unit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sô lượng quy đổi', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N'f_Exchange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số lượng hàng báo giá', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N'f_Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Giá hàng báo giá', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N'm_Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N'f_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N'm_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thứ tự dòng tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N'i_IDSort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% thuế VAT (chưa dùng)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_Quote', @level2type = N'COLUMN', @level2name = N'f_VAT';

