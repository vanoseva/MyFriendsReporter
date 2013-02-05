CREATE TABLE [dbo].[LS_Outcome] (
    [s_ID]               NVARCHAR (50)   CONSTRAINT [DF_LS_Outcome_s_ID] DEFAULT (newid()) NOT NULL,
    [s_NumberID]         NVARCHAR (50)   NULL,
    [dt_DayMonth]        SMALLDATETIME   NULL,
    [s_Object_ID]        NVARCHAR (50)   NULL,
    [i_Item_ID]          NVARCHAR (50)   NULL,
    [m_Total]            MONEY           CONSTRAINT [DF_LS_Outcome_m_Total] DEFAULT ((0)) NULL,
    [m_Discount]         MONEY           NULL,
    [s_PaymentReason]    NVARCHAR (50)   NULL,
    [i_PaymentDebt]      INT             NULL,
    [i_Payment]          NVARCHAR (50)   NULL,
    [s_Bank_ID]          NVARCHAR (50)   NULL,
    [b_isCash]           BIT             CONSTRAINT [DF_LS_Outcome_b_isCash] DEFAULT ((1)) NULL,
    [s_Note]             NVARCHAR (1024) NULL,
    [i_IDSort]           NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Word]             NVARCHAR (500)  NULL,
    [s_Receiver]         NVARCHAR (100)  NULL,
    [s_Payer]            NVARCHAR (100)  NULL,
    [s_ConfirmConsignID] NVARCHAR (50)   NULL,
    [s_Creator]          NVARCHAR (50)   NULL,
    [s_Editor]           NVARCHAR (50)   NULL,
    [dt_Create]          SMALLDATETIME   NULL,
    [dt_Edit]            SMALLDATETIME   NULL,
    [b_isCashFromImport] BIT             NULL,
    [s_IDDebt]           NVARCHAR (50)   NULL,
    [m_PrepayNext]       MONEY           NULL,
    [s_Import_ID]        NVARCHAR (50)   NULL,
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
    CONSTRAINT [PK_LS_Outcome] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Outcome-s_Item_ID-LS_OtherOutcome-s_ID] FOREIGN KEY ([i_Item_ID]) REFERENCES [dbo].[LS_OtherOutcome] ([s_ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã phiếu chi', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_NumberID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đối tượng(nhà cung cấp)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_Object_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 là chi tiền trực tiếp,1 chi từ gối đầu,2 la chi vao tien goi dau', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N'i_PaymentDebt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên người trả-trường hợp chi khác', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_Payer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chứng từ nhập ký gửi, lấy từ s_ID của LS_ImportConsign', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_ConfirmConsignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người tạo phiếu chi, lấy từ tài khoản người dùng đăng nhập chương trình', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_Creator';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Người hiệu chỉnh phiếu chi lần cuối cùng, lấy từ tài khoản người dùng đăng nhập chương trình', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_Editor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày tạo phiếu chi theo ngày giờ hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N'dt_Create';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày hiệu chỉnh phiếu chi lần cuối cùng theo ngày giờ hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N'dt_Edit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tùy chọn chi tiền trực tiếp từ nghiệp vụ nhập', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N'b_isCashFromImport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số phiếu chi công nợ gốc, lấy từ s_ID của LS_Outcome, nếu s_IDDebt<>''''->là phiếu chi vào gối đầu được chuyển từ phiếu chi công nợ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_IDDebt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiền chi còn lại-> chuyển vào phiếu chi gối đầu ở phiếu tiếp theo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N'm_PrepayNext';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chứng từ nhập, lấy từ s_ID của LS_Imports, áp dụng cho trường hợp làm phiếu nhập chi ra gối đầu', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Outcome', @level2type = N'COLUMN', @level2name = N's_Import_ID';

