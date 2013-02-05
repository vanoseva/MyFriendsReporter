CREATE TABLE [dbo].[LS_PurchaseImports] (
    [s_ID]          NVARCHAR (50)   CONSTRAINT [DF__LS_Purchas__s_ID__5F7E2DAC] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]    NVARCHAR (50)   NULL,
    [s_Char]        NVARCHAR (50)   NULL,
    [dt_CreateDate] SMALLDATETIME   NULL,
    [dt_OrderDate]  SMALLDATETIME   NULL,
    [s_EmployeeID]  NVARCHAR (50)   NULL,
    [s_Object_ID]   NVARCHAR (50)   NULL,
    [s_ContactID]   NVARCHAR (50)   NULL,
    [m_Total1]      MONEY           NULL,
    [f_Expense]     FLOAT (53)      NULL,
    [m_Expense]     MONEY           NULL,
    [f_VAT]         FLOAT (53)      CONSTRAINT [DF__LS_Purcha__i_VAT__6166761E] DEFAULT ((0)) NULL,
    [m_VAT]         MONEY           NULL,
    [f_Discount]    FLOAT (53)      CONSTRAINT [DF__LS_Purcha__f_Dis__625A9A57] DEFAULT ((0)) NULL,
    [m_Discount]    MONEY           NULL,
    [f_Commission]  FLOAT (53)      CONSTRAINT [DF__LS_Purcha__f_Per__634EBE90] DEFAULT ((0)) NULL,
    [m_Commission]  MONEY           NULL,
    [m_Ordertotal]  MONEY           CONSTRAINT [DF_LS_PurchaseImports_m_Ordertotal] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (4000) NULL,
    [s_Status]      NVARCHAR (100)  NULL,
    [i_IDSort]      NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]        NVARCHAR (500)  NULL,
    [b_isFinish]    BIT             CONSTRAINT [DF_LS_PurchaseImports_b_isFinish] DEFAULT ((0)) NULL,
    [PaymentTermID] NVARCHAR (50)   NULL,
    [s_Creator]     NVARCHAR (50)   NULL,
    [s_Editor]      NVARCHAR (50)   NULL,
    [dt_Create]     DATETIME        NULL,
    [dt_Edit]       DATETIME        NULL,
    [Curr]          NVARCHAR (50)   NULL,
    [m_Exchange]    FLOAT (53)      NULL,
    CONSTRAINT [PK_LS_PurchaseImports] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_PurchaseImports_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã người dùng nhập, chương trình kiểm tra trùng mã.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_Order_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chứng từ do người dùng tự nhập.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_Char';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày lập đơn hàng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'dt_CreateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày dự kiến nhập hàng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'dt_OrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nhân viên chịu trách nhiệm', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_EmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nhà cung cấp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_Object_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người liên hệ phía nhà cung cấp', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thành tiền ban đầu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'm_Total1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% chi khác', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'f_Expense';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền chi khác', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'm_Expense';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% Thuế VAT', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'f_VAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền thuế VAT', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'm_VAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'f_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'm_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% hoa hồng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'f_Commission';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền hoa hồng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'm_Commission';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tổng tiền đơn hàng mua', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'm_Ordertotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tình trạng đơn hàng mua (Đang đặt hàng, Nhận hàng 1 phần, Đã nhận hàng)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số tiền viết bằng chữ.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_Word';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phương thức thanh toán', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'PaymentTermID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người tạo đơn hàng: từ tài khoản người dùng chương trình. Không được hiệu chỉnh.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_Creator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người hiệu chỉnh đơn hàng: từ tài khoản người dùng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N's_Editor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày tạo đơn hàng (lần đâu tiên). Không được hiệu chỉnh.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'dt_Create';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày hiệu chỉnh thông tin đơn hàng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_PurchaseImports', @level2type = N'COLUMN', @level2name = N'dt_Edit';

