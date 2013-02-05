CREATE TABLE [dbo].[LS_Income] (
    [s_ID]               NVARCHAR (50)   CONSTRAINT [DF_PR_ListIncome_s_ID] DEFAULT (newid()) NOT NULL,
    [s_NumberID]         NVARCHAR (50)   NULL,
    [dt_DayMonth]        SMALLDATETIME   NULL,
    [s_Object_ID]        NVARCHAR (50)   NULL,
    [i_Item_ID]          NVARCHAR (50)   NULL,
    [m_Total]            MONEY           CONSTRAINT [DF_LS_Income_m_Total] DEFAULT ((0)) NULL,
    [m_Discount]         MONEY           NULL,
    [s_PaymentReason]    NVARCHAR (255)  NULL,
    [i_PaymentDebt]      INT             NULL,
    [s_Bank_ID]          NVARCHAR (50)   NULL,
    [b_isCash]           BIT             CONSTRAINT [DF_PR_ListIncome_b_isCash] DEFAULT ((1)) NULL,
    [s_Note]             NVARCHAR (1024) NULL,
    [i_IDSort]           NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]             NVARCHAR (500)  NULL,
    [s_Payer]            NVARCHAR (100)  NULL,
    [s_ConfirmConsignID] NVARCHAR (50)   NULL,
    [s_Creator]          NVARCHAR (50)   NULL,
    [s_Editor]           NVARCHAR (50)   NULL,
    [dt_Create]          SMALLDATETIME   NULL,
    [dt_Edit]            SMALLDATETIME   NULL,
    [b_isCashFromOrder]  BIT             CONSTRAINT [DF_LS_Income_b_isCashFromOrder] DEFAULT ((0)) NULL,
    [s_IDDebt]           NVARCHAR (50)   NULL,
    [m_PrepayNext]       MONEY           CONSTRAINT [DF_LS_Income_m_PrepayNext] DEFAULT ((0)) NULL,
    [s_Order_ID]         NVARCHAR (50)   NULL,
    [CardID]             NVARCHAR (50)   NULL,
    [CardSerial]         NVARCHAR (50)   NULL,
    [PerCard]            FLOAT (53)      NULL,
    [s_TransCurr]        NVARCHAR (50)   NULL,
    [i_GroupItem_ID]     NVARCHAR (50)   NULL,
    [Curr]               NVARCHAR (50)   NULL,
    [VND]                MONEY           NULL,
    [USD]                MONEY           NULL,
    [Exchange]           FLOAT (53)      NULL,
    [PayUSD]             MONEY           NULL,
    [PayVND]             MONEY           NULL,
    [i_PaymentReason]    INT             NULL,
    [m_Diff]             MONEY           NULL,
    [Reason]             NVARCHAR (150)  NULL,
    [Address]            NVARCHAR (255)  NULL,
    [Phone]              NVARCHAR (20)   NULL,
    CONSTRAINT [PK_PR_ListIncome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Income_LS_OtherIncome] FOREIGN KEY ([i_Item_ID]) REFERENCES [dbo].[LS_OtherIncome] ([i_ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã người dùng nhập, chương trình kiểm tra trùng mã.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_NumberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày thu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'dt_DayMonth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đối tượng, lấy từ s_ID của LS_Objects', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Object_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã phương thức thu khác, lấy từ i_ID của LS_OtherIncome, áp dụng cho Lý do thu: Thu khác', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'i_Item_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiển thu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'm_Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền chiết khấu thanh toán trên phiếu thu (new)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'm_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lý do thu (new)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_PaymentReason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phương thức thu công nợ (new): 0:thu tiền trực tiếp(default(), 1:thu từ tiền gối đầu, 2: thu vào tiền gối đầu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'i_PaymentDebt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã tài khoản, lấy từ s_ID của LS_Banks, áp dụng cho hình thức thu chuyển khoản', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Bank_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hình thức thu, mặc định là 1: tiền mặt, ngược lại 0: chuyển khoản', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'b_isCash';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ghi chú', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Note';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thứ tự dòng tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'i_IDSort';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số tiền thu bằng chữ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Word';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên người trả-trường hợp thu khác', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Payer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chứng từ xuất ký gửi, lấy từ s_ID của LS_OrderConsign', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_ConfirmConsignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người tạo phiếu thu, lấy từ tài khoản người dùng đăng nhập chương trình', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Creator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người hiệu chỉnh phiếu thu lần cuối cùng, lấy từ tài khoản người dùng đăng nhập chương trình', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Editor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày tạo phiếu thu theo ngày giờ hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'dt_Create';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày hiệu chỉnh phiếu thu lần cuối cùng theo ngày giờ hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'dt_Edit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tùy chọn thu tiền trực tiếp từ nghiệp vụ xuất', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'b_isCashFromOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số phiếu thu công nợ gốc, lấy từ s_ID của LS_Income, nếu s_IDDebt<>''''->là phiếu thu vào gối đầu được chuyển từ phiếu thu công nợ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_IDDebt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền thu còn lại-> chuyển vào phiếu thu gối đầu ở phiếu tiếp theo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N'm_PrepayNext';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chứng từ xuất, lấy từ s_ID của V_FullOrder, áp dụng cho trường hợp làm phiếu xuất thu vào gối đầu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Income', @level2type = N'COLUMN', @level2name = N's_Order_ID';

