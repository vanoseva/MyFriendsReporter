CREATE TABLE [dbo].[Ls_PriceLevel] (
    [s_ID]       NVARCHAR (50) CONSTRAINT [DF_Ls_PriceLevel_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Name]     NVARCHAR (50) NULL,
    [b_Type]     BIT           NULL,
    [f_Percent]  FLOAT (53)    NULL,
    [b_Increase] BIT           NULL,
    [i_Cost]     INT           NULL,
    [isActive]   BIT           NULL,
    CONSTRAINT [PK_Ls_PriceLevel] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0:theo tất cả sản phẩm 1: theo sản phẩm lựa chọn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_PriceLevel', @level2type = N'COLUMN', @level2name = N'b_Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0:Tăng(cao hơn), 1:Giảm(Thấp hơn)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_PriceLevel', @level2type = N'COLUMN', @level2name = N'b_Increase';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0:Theo Giá mua, 1: Theo giá bán(chuẩn), 2: Theo giá điều chỉnh', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_PriceLevel', @level2type = N'COLUMN', @level2name = N'i_Cost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hiệu lực', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_PriceLevel', @level2type = N'COLUMN', @level2name = N'isActive';

