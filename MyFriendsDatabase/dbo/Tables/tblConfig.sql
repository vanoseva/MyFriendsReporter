CREATE TABLE [dbo].[tblConfig] (
    [i_ID]                   INT             IDENTITY (1, 1) NOT NULL,
    [s_CompanyName]          NVARCHAR (255)  NULL,
    [s_Initials]             NVARCHAR (50)   NULL,
    [im_Logo]                IMAGE           NULL,
    [s_TaxNo]                NVARCHAR (50)   NULL,
    [s_Account]              NVARCHAR (50)   NULL,
    [s_Address]              NVARCHAR (255)  NULL,
    [s_Phone1]               NVARCHAR (50)   NULL,
    [s_Phone2]               NVARCHAR (50)   NULL,
    [s_Fax]                  NVARCHAR (50)   NULL,
    [s_Email]                NVARCHAR (100)  NULL,
    [s_Website]              NVARCHAR (100)  NULL,
    [i_FormatCur]            INT             NULL,
    [i_FormatNum]            INT             NULL,
    [b_SysDiscountBeforeTax] BIT             NULL,
    [s_SysCur]               NVARCHAR (50)   NULL,
    [b_SysCommission]        BIT             NULL,
    [b_isTrackPurchaseOrder] BIT             NULL,
    [b_CheckInstock]         BIT             NULL,
    [i_ConfigID]             INT             CONSTRAINT [DF_tblConfig_i_ConfigID] DEFAULT ((1)) NULL,
    [s_MethodHH]             NVARCHAR (50)   NULL,
    [s_MethodCL]             NVARCHAR (50)   NULL,
    [s_MethodTU]             NVARCHAR (50)   NULL,
    [s_MethodImport]         NVARCHAR (50)   NULL,
    [s_MethodOrder]          NVARCHAR (50)   NULL,
    [b_ShowLogo]             BIT             NULL,
    [b_ShowName]             BIT             NULL,
    [b_ShowAdd]              BIT             NULL,
    [b_ShowPhoneFax]         BIT             NULL,
    [b_ShowEmailWeb]         BIT             NULL,
    [MinHour]                INT             NULL,
    [Refresh]                INT             NULL,
    [NumFlood]               INT             NULL,
    [NumRoom]                INT             NULL,
    [VAT]                    FLOAT (53)      NULL,
    [PPV]                    FLOAT (53)      NULL,
    [RegHour]                BIT             NULL,
    [RegDiscount]            BIT             NULL,
    [iCaseMath]              INT             NULL,
    [fromTime]               SMALLDATETIME   NULL,
    [toTime]                 SMALLDATETIME   NULL,
    [iCaseOrver]             INT             NULL,
    [TimeIn]                 SMALLDATETIME   NULL,
    [TimeOut]                SMALLDATETIME   NULL,
    [isConnectAccounting]    INT             DEFAULT ((0)) NULL,
    [bSingleCur]             BIT             NULL,
    [fAddDay]                FLOAT (53)      NULL,
    [timeAlertBK]            INT             NULL,
    [timeOutLockTable]       INT             NULL,
    [IsOver]                 BIT             NULL,
    [timeAllowBK]            INT             NULL,
    [timeAlertInterval]      INT             NULL,
    [NumberCopy]             INT             NULL,
    [IsVATConfig]            BIT             NULL,
    [dinhmucbill]            MONEY           NULL,
    [ValVoucher]             MONEY           NULL,
    [tinh_ppv_Tien]          BIT             NULL,
    [phantramppv]            FLOAT (53)      NULL,
    [tienppv]                MONEY           NULL,
    [tinh_giam_Tien]         BIT             NULL,
    [phantramgiam]           FLOAT (53)      NULL,
    [tiengiam]               MONEY           NULL,
    [nCharTax]               INT             NULL,
    [symbolTax]              NVARCHAR (50)   NULL,
    [IsPriceVAT]             BIT             NULL,
    [i_QtyPrint]             INT             NULL,
    [s_Item]                 NVARCHAR (1024) NULL,
    [b_ChooseTypePrint]      BIT             NULL,
    [IsView]                 BIT             NULL,
    [i_NumColExchange]       INT             NULL,
    [s_MethodExchange]       NCHAR (4)       NULL,
    [nRow]                   INT             NULL,
    [VATDefault]             FLOAT (53)      NULL,
    [InvoiceQty]             INT             NULL,
    [AutoApplyMenu]          BIT             NULL,
    [DefaultMenu]            NVARCHAR (50)   NULL,
    CONSTRAINT [PK_tblConfig] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên công ty (viết tắt)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N's_Initials';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'định dạng tiền tệ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N'i_FormatCur';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'định dạng số', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N'i_FormatNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tính chiết khấu trước thuế/sau thuế', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N'b_SysDiscountBeforeTax';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'định dạng đơn vị tiền tệ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N's_SysCur';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'tính hoa hồng truớc giảm giá', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N'b_SysCommission';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'không theo dõi đơn đặt hàng/ngược lại', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N'b_isTrackPurchaseOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cho phép xuất vượt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N'b_CheckInstock';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chi hoa hồng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N's_MethodHH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chi lương', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N's_MethodCL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chi tạm ứng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N's_MethodTU';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phuơng thức nhập điều chỉnh kho', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N's_MethodImport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phương thức xuất điều chỉnh kho', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblConfig', @level2type = N'COLUMN', @level2name = N's_MethodOrder';

