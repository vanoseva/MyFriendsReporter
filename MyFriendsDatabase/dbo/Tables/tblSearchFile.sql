CREATE TABLE [dbo].[tblSearchFile] (
    [s_ID]         NVARCHAR (50)  NOT NULL,
    [s_Name]       NVARCHAR (500) NULL,
    [s_SearchFile] NVARCHAR (500) NULL,
    [s_Type]       NVARCHAR (50)  NULL,
    [s_Content]    NVARCHAR (MAX) NULL,
    [sCode]        NVARCHAR (MAX) NULL,
    [sDisplay]     NVARCHAR (MAX) NULL,
    [sTable]       NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblSearchFile] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lưu chuỗi điều kiện where', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblSearchFile', @level2type = N'COLUMN', @level2name = N'sCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lưu chuỗi điều kiện where bằng ngôn ngữ bình thuờng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblSearchFile', @level2type = N'COLUMN', @level2name = N'sDisplay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lưu danh sách những bảng chọn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblSearchFile', @level2type = N'COLUMN', @level2name = N'sTable';

