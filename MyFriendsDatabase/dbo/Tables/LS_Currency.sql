CREATE TABLE [dbo].[LS_Currency] (
    [i_ID]       NVARCHAR (50)  NOT NULL,
    [IDKH_s]     NVARCHAR (50)  NOT NULL,
    [s_Name]     NVARCHAR (255) NULL,
    [m_Exchange] FLOAT (53)     NULL,
    [s_Note]     NVARCHAR (500) NULL,
    [b_isSys]    BIT            CONSTRAINT [DF_LS_Currency_b_isSys] DEFAULT ((0)) NULL,
    [OrderNo_i]  INT            NULL,
    [m_Begin]    MONEY          DEFAULT ((0)) NULL,
    [m_Instock]  MONEY          DEFAULT ((0)) NULL,
    [nsole]      INT            NULL,
    CONSTRAINT [PK_LS_Currency] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã chương trình quản lý, mặc định tự động tăng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Currency', @level2type = N'COLUMN', @level2name = N'i_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tên đơn vị tiền tệ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Currency', @level2type = N'COLUMN', @level2name = N's_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tỷ giá tham khảo, mặc định là 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Currency', @level2type = N'COLUMN', @level2name = N'm_Exchange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ghi chú', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Currency', @level2type = N'COLUMN', @level2name = N's_Note';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tùy chọn đơn vị tiền tệ hệ thống, cập nhật từ cấu hình hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Currency', @level2type = N'COLUMN', @level2name = N'b_isSys';

