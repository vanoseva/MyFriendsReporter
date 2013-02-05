CREATE TABLE [dbo].[PR_ImportDetail] (
    [s_ID]            NVARCHAR (50) CONSTRAINT [DF_ImportDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50) NULL,
    [s_Product_ID]    NVARCHAR (50) NULL,
    [f_Quantity]      FLOAT (53)    CONSTRAINT [DF_ImportDetail_f_Quantity] DEFAULT ((0)) NULL,
    [m_Price]         MONEY         CONSTRAINT [DF_ImportDetail_m_Price] DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50) NULL,
    [s_Unit]          NVARCHAR (50) NULL,
    [f_Convert]       FLOAT (53)    NULL,
    [f_QuantityOrder] FLOAT (53)    CONSTRAINT [DF_ImportDetail_f_QuantityOrder] DEFAULT ((0)) NULL,
    [i_IDsort]        NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    [m_PriceUSD]      MONEY         CONSTRAINT [DF_ImportDetail_m_PriceUSD] DEFAULT ((0)) NULL,
    [dt_OverDate]     SMALLDATETIME NULL,
    [f_Discount]      FLOAT (53)    CONSTRAINT [DF_PR_ImportDetail_f_Discount] DEFAULT ((0)) NULL,
    [m_Discount]      MONEY         CONSTRAINT [DF_PR_ImportDetail_m_Discount] DEFAULT ((0)) NULL,
    [s_Note]          NVARCHAR (50) NULL,
    [s_Purchase_ID]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_ImportDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ImportDetail_Ls_Imports] FOREIGN KEY ([s_Import_ID]) REFERENCES [dbo].[Ls_Imports] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ImportDetail_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ImportDetail_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã phiếu nhập, lấy từ s_ID của LS_Imports', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N's_Import_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã hàng, lấy từ s_ID của LS_Products', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N's_Product_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số lượng hàng nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'f_Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Giá hàng nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'm_Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã kho, lấy từ s_ID của LS_Stores', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N's_Store_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Đơn vị tính hàng nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N's_Unit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sô lượng quy đổi', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'f_Convert';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thứ tự dòng tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'i_IDsort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Giá nhập hàng tính bằng USD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'm_PriceUSD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày quá hạn sử dụng của mặt hàng nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'dt_OverDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% Chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'f_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền Chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N'm_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ghi chú', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ImportDetail', @level2type = N'COLUMN', @level2name = N's_Note';

