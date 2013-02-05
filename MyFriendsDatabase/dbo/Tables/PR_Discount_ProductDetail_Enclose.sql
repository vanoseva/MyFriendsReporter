CREATE TABLE [dbo].[PR_Discount_ProductDetail_Enclose] (
    [s_ID]                NVARCHAR (50)  CONSTRAINT [DF_PR_Object_Discount_ProductDetail_Enclose_s_ID] DEFAULT (newid()) NOT NULL,
    [s_DiscountDetail_ID] NVARCHAR (50)  NULL,
    [s_Product_ID]        NVARCHAR (50)  NULL,
    [s_EncloseProduct_ID] NVARCHAR (50)  NULL,
    [f_EncloseQuantity]   FLOAT (53)     CONSTRAINT [DF_PR_Object_Discount_ProductDetail_Enclose_f_EncloseQuantity] DEFAULT ((0)) NULL,
    [s_Note]              NVARCHAR (500) NULL,
    [i_Ordinal]           NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_Object_Discount_ProductDetail_Enclose] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Object_Discount_ProductDetail_Enclose_PR_Object_Discount_ProductDetail] FOREIGN KEY ([s_DiscountDetail_ID]) REFERENCES [dbo].[PR_Discount_ProductDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

