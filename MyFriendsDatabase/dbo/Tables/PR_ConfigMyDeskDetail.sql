CREATE TABLE [dbo].[PR_ConfigMyDeskDetail] (
    [UID]           NVARCHAR (50) NOT NULL,
    [MyDeskID]      INT           NULL,
    [isSelect]      BIT           NULL,
    [isDefault]     BIT           NULL,
    [im_Background] IMAGE         NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dùng để chạy tính năng nào đầu tiên', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ConfigMyDeskDetail', @level2type = N'COLUMN', @level2name = N'isDefault';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'hình nền cho màn hình làm việc của từng user', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_ConfigMyDeskDetail', @level2type = N'COLUMN', @level2name = N'im_Background';

