CREATE TABLE [dbo].[PR_PriceLevel_Detail] (
    [s_ID]            NVARCHAR (50) CONSTRAINT [DF_PR_PriceLevel_Detail_s_ID] DEFAULT (newid()) NULL,
    [s_PriceLevel_ID] NVARCHAR (50) NULL,
    [s_Product_ID]    NVARCHAR (50) NULL,
    [m_CustomPrice]   MONEY         NULL,
    [isSelect]        BIT           NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lấy từ s_ID của ls_PriceLevel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PriceLevel_Detail', @level2type = N'COLUMN', @level2name = N's_PriceLevel_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lấy s_ID từ ls_Products', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PriceLevel_Detail', @level2type = N'COLUMN', @level2name = N's_Product_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Giá cập nhật theo % mức giá trong PriceLevel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PR_PriceLevel_Detail', @level2type = N'COLUMN', @level2name = N'm_CustomPrice';

