CREATE TABLE [dbo].[PR_Discount_ProductDetail_Level] (
    [s_ID]                NVARCHAR (50)  CONSTRAINT [DF_PR_Object_Discount_ProductDetail_Level_s_ID] DEFAULT (newid()) NOT NULL,
    [s_DiscountDetail_ID] NVARCHAR (50)  NULL,
    [m_MinRevenue]        MONEY          CONSTRAINT [DF_PR_Object_Discount_ProductDetail_Level_m_MinRevenue] DEFAULT ((0)) NULL,
    [f_Percentage]        FLOAT (53)     CONSTRAINT [DF_PR_Object_Discount_ProductDetail_Level_f_Percentage] DEFAULT ((0)) NULL,
    [m_Discount]          MONEY          CONSTRAINT [DF_PR_Discount_ProductDetail_Level_m_Discount] DEFAULT ((0)) NULL,
    [s_Note]              NVARCHAR (500) NULL,
    [i_Ordinal]           NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_Object_Discount_ProductDetail_Level] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Object_Discount_ProductDetail_Level_PR_Object_Discount_ProductDetail] FOREIGN KEY ([s_DiscountDetail_ID]) REFERENCES [dbo].[PR_Discount_ProductDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

