CREATE TABLE [dbo].[PR_Discount_ProductDetail] (
    [s_ID]                  NVARCHAR (50)  CONSTRAINT [DF_PR_Object_Discount_ProductDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Discount_ID]         NVARCHAR (50)  NULL,
    [s_Product_ID]          NVARCHAR (50)  NULL,
    [f_Quantity]            FLOAT (53)     CONSTRAINT [DF_PR_Object_Discount_ProductDetail_f_Quantity] DEFAULT ((0)) NULL,
    [f_PromotionalQuantity] FLOAT (53)     CONSTRAINT [DF_PR_Object_Discount_ProductDetail_f_PromotionalQuantity] DEFAULT ((0)) NULL,
    [s_Note]                NVARCHAR (500) NULL,
    [i_Ordinal]             NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_Object_Discount_ProductDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Discount_ProductDetail_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Object_Discount_ProductDetail_PR_Object_Discount_Product] FOREIGN KEY ([s_Discount_ID]) REFERENCES [dbo].[LS_Discount_Product] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

