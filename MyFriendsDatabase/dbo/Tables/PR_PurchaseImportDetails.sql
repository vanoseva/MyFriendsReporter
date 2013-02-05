CREATE TABLE [dbo].[PR_PurchaseImportDetails] (
    [s_ID]              NVARCHAR (50)  CONSTRAINT [DF__PR_Purchas__s_ID__671F4F74] DEFAULT (newid()) NOT NULL,
    [s_OrderID]         NVARCHAR (50)  NOT NULL,
    [s_Product_ID]      NVARCHAR (50)  NULL,
    [s_Unit]            NVARCHAR (50)  NULL,
    [f_Convert]         FLOAT (53)     CONSTRAINT [DF__PR_Purcha__f_Con__6AEFE058] DEFAULT ((0)) NULL,
    [f_Quantity]        FLOAT (53)     CONSTRAINT [DF__PR_Purcha__f_Qua__681373AD] DEFAULT ((0)) NULL,
    [f_QuantityReceive] FLOAT (53)     CONSTRAINT [DF_PR_PurchaseImportDetails_f_QuantitySend] DEFAULT ((0)) NULL,
    [m_Price]           MONEY          CONSTRAINT [DF__PR_Purcha__m_Pri__690797E6] DEFAULT ((0)) NULL,
    [f_Discount]        FLOAT (53)     CONSTRAINT [DF__PR_Purcha__f_Dis__69FBBC1F] DEFAULT ((0)) NULL,
    [m_Discount]        MONEY          NULL,
    [s_Store_ID]        NVARCHAR (50)  NULL,
    [s_Note]            NVARCHAR (500) NULL,
    [i_IDSort]          NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [f_Tax]             FLOAT (53)     NULL,
    [dt_OverDate]       SMALLDATETIME  NULL,
    CONSTRAINT [PK_PR_PurchaseImportDetails] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_PurchaseImportDetails_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_PurchaseImportDetails_LS_PurchaseImports] FOREIGN KEY ([s_OrderID]) REFERENCES [dbo].[LS_PurchaseImports] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự phát sinh.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đơn đặt hàng mua, lấy từ s_ID của LS_PurchaseImports', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N's_OrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã hàng, lấy từ s_ID của LS_Products', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N's_Product_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Đơn vị tính hàng nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N's_Unit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sô lượng quy đổi', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'f_Convert';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số lượng hàng đặt mua', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'f_Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số lượng đã được nhập (được cập nhật liên tục qua các lần tạo phiếu nhập). Khi f_QuantityReceive lớn hơn f_Quantity thì thông báo nhập vược cho người dùng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'f_QuantityReceive';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Đơn giá mua hàng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'm_Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% Chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'f_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'm_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã kho, lấy từ s_ID của LS_Stores', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N's_Store_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thứ tự dòng tự động tăng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'i_IDSort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% thuế', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'f_Tax';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày quá hạn sử dụng của mặt hàng nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PurchaseImportDetails', @level2type = N'COLUMN', @level2name = N'dt_OverDate';

