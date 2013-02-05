CREATE TABLE [dbo].[Ls_Imports] (
    [s_ID]            NVARCHAR (50)   CONSTRAINT [DF_Imports_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Import_ID]     NVARCHAR (50)   NULL,
    [i_Item_ID]       NVARCHAR (50)   NULL,
    [dt_ImportDate]   SMALLDATETIME   NULL,
    [s_Object_ID]     NVARCHAR (50)   NULL,
    [s_EmployeeID]    NVARCHAR (50)   NULL,
    [f_VAT]           FLOAT (53)      CONSTRAINT [DF_Imports_f_VAT] DEFAULT ((0)) NULL,
    [f_Discount]      FLOAT (53)      CONSTRAINT [DF_Imports_f_Discount] DEFAULT ((0)) NULL,
    [m_Discount]      MONEY           NULL,
    [m_ImportTotal]   MONEY           CONSTRAINT [DF_Imports_m_ImportTotal] DEFAULT ((0)) NULL,
    [b_is_Cash]       BIT             CONSTRAINT [DF_Ls_Imports_b_is_Cash] DEFAULT ((0)) NULL,
    [s_Store_ID]      NVARCHAR (50)   NULL,
    [s_Note]          NVARCHAR (3000) NULL,
    [s_InfoProduct]   NVARCHAR (3000) NULL,
    [s_SymbolInvoice] NVARCHAR (50)   NULL,
    [s_Invoice]       NVARCHAR (50)   NULL,
    [s_Word]          NVARCHAR (500)  NULL,
    [i_IDSort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [m_Cost]          MONEY           CONSTRAINT [DF_Imports_m_Cost] DEFAULT ((0)) NULL,
    [m_Exchange]      MONEY           CONSTRAINT [DF_Imports_m_Exchange] DEFAULT ((0)) NULL,
    [s_Name]          NVARCHAR (255)  NULL,
    [s_Purchase_ID]   NVARCHAR (50)   NULL,
    [dt_Create]       SMALLDATETIME   NULL,
    [dt_LastUpdate]   SMALLDATETIME   NULL,
    [s_UserCreate]    NVARCHAR (50)   NULL,
    [s_UserEdit]      NVARCHAR (50)   NULL,
    [PaymentTermID_s] NVARCHAR (50)   NULL,
    [b_isDept]        BIT             NULL,
    [b_isCash]        BIT             NULL,
    [b_isCashAll]     BIT             NULL,
    [b_isCashPart]    BIT             NULL,
    [b_isCashPrepay]  BIT             NULL,
    [m_Cash]          MONEY           NULL,
    [f_Per]           FLOAT (53)      NULL,
    [m_Per]           MONEY           NULL,
    [s_Char]          NVARCHAR (50)   NULL,
    [m_IncDebt]       MONEY           NULL,
    [m_OutDebt]       MONEY           NULL,
    [Curr]            NVARCHAR (50)   NULL,
    CONSTRAINT [PK_Imports] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Imports_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_Ls_Imports_Ls_PaymentImport] FOREIGN KEY ([i_Item_ID]) REFERENCES [dbo].[Ls_PaymentImport] ([i_ID]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_Ls_Imports_LS_PaymentTerm] FOREIGN KEY ([PaymentTermID_s]) REFERENCES [dbo].[LS_PaymentTerm] ([s_ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã người dùng nhập, chương trình kiểm tra trùng mã.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Import_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã phương thức nhập, lấy từ i_ID của LS_PaymentImport', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'i_Item_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'dt_ImportDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đối tượng (NCC), lấy từ s_ID của LS_Objects', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Object_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã nhân viên, lấy từ s_ID của LS_Employees', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_EmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% Thuế giá trị gia tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'f_VAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% Chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'f_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền Chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'm_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tổng giá trị một phiếu nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'm_ImportTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã kho, lấy từ s_ID của LS_Stores', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Store_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tổng hợp tên các mặt hàng trong phiếu nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_InfoProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ký hiệu hóa đơn nhập hàng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_SymbolInvoice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số hóa đơn nhập hàng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Invoice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số tiền bằng chữ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Word';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thứ tự dòng tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'i_IDSort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chi phí vận chuyển khi thực hiện nhập hàng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'm_Cost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tỷ giá giữa hai đơn vị tiền tệ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'm_Exchange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mô tả nội dung phiếu nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã này sẽ lấy s_ID của ls_purchaseImports khi phiếu nhập đc tạo từ đơn đặt hàng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Purchase_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày tạo đơn hàng (lần đâu tiên). Không được hiệu chỉnh.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'dt_Create';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày hiệu chỉnh thông tin đơn hàng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'dt_LastUpdate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người tạo đơn hàng: từ tài khoản người dùng chương trình. Không được hiệu chỉnh.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_UserCreate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người hiệu chỉnh đơn hàng: từ tài khoản người dùng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_UserEdit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phương thức thanh toán', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N'PaymentTermID_s';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chứng từ do người dùng tự định nghĩa', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Imports', @level2type = N'COLUMN', @level2name = N's_Char';

