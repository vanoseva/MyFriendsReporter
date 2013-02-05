CREATE TABLE [dbo].[Ls_Quote] (
    [s_ID]          NVARCHAR (50)   NOT NULL,
    [s_Order_ID]    NVARCHAR (50)   NULL,
    [dt_CreateDate] SMALLDATETIME   NULL,
    [dt_ValidDate]  DATETIME        NULL,
    [b_Valid]       BIT             CONSTRAINT [DF_Ls_Quote_b_Valid] DEFAULT ((1)) NULL,
    [s_Object_ID]   NVARCHAR (50)   NULL,
    [s_Employee_ID] NVARCHAR (50)   NULL,
    [s_Currency]    NVARCHAR (50)   NULL,
    [s_Word]        NVARCHAR (250)  NULL,
    [f_VAT]         FLOAT (53)      CONSTRAINT [DF_Ls_Quote_f_VAT_1] DEFAULT ((0)) NULL,
    [m_VAT]         MONEY           CONSTRAINT [DF_Ls_Quote_f_VAT] DEFAULT ((0)) NULL,
    [m_Total1]      MONEY           CONSTRAINT [DF_Ls_Quote_m_Total] DEFAULT ((0)) NULL,
    [m_Discount]    MONEY           CONSTRAINT [DF_Ls_Quote_m_Discount] DEFAULT ((0)) NULL,
    [f_Deduction]   FLOAT (53)      CONSTRAINT [DF_Ls_Quote_f_Deduction] DEFAULT ((0)) NULL,
    [m_Deduction]   MONEY           CONSTRAINT [DF_Ls_Quote_m_Deduction] DEFAULT ((0)) NULL,
    [m_Total2]      MONEY           CONSTRAINT [DF_Ls_Quote_m_Total2] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (1024) NULL,
    [i_IDSort]      NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Status]      NVARCHAR (50)   NULL,
    [i_TermID]      NVARCHAR (50)   CONSTRAINT [DF_Ls_Quote_i_TermID] DEFAULT ((0)) NULL,
    [s_Creator]     NVARCHAR (50)   NULL,
    [s_Editor]      NVARCHAR (50)   NULL,
    [dt_Create]     SMALLDATETIME   NULL,
    [dt_Edit]       SMALLDATETIME   NULL,
    CONSTRAINT [PK_Ls_Quote] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Quote_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự động tăng.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã người dùng nhập, chương trình kiểm tra trùng mã.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Order_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày lập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'dt_CreateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày hiệu lực', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'dt_ValidDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hiệu lực', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'b_Valid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đối tượng, lấy từ s_ID của LS_Objects', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Object_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã nhân viên, link với s_ID của LS_Employee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Employee_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Loại tiền tệ thanh toán', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Currency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số tiền bằng chữ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Word';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% Thuế VAT', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'f_VAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền VAT', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'm_VAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thành Tiền sau chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'm_Total1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền chiết khấu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'm_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% Giảm trừ trên Total1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'f_Deduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền giảm trừ trên Total1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'm_Deduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thành tiền sau cùng (Thuế, Giảm trừ)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'm_Total2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thứ tự dòng tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'i_IDSort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phân loại tình trạng của bảng báo giá', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã kỳ hạn thanh toán, lấy từ i_ID của LS_PaymentTerm', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'i_TermID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người tạo đơn đặt hàng, lấy từ tài khoản người dùng đăng nhập chương trình', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Creator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người hiệu chỉnh đơn đặt hàng lần cuối cùng, lấy từ tài khoản người dùng đăng nhập chương trình', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N's_Editor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày tạo đơn đặt hàng theo ngày giờ hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'dt_Create';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày hiệu chỉnh đơn đặt hàng lần cuối cùng theo ngày giờ hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Quote', @level2type = N'COLUMN', @level2name = N'dt_Edit';

