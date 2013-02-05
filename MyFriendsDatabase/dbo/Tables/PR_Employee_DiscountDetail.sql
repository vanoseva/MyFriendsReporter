CREATE TABLE [dbo].[PR_Employee_DiscountDetail] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_PR_Employee_DiscountDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Discount_ID] NVARCHAR (50)  NULL,
    [s_Product_ID]  NVARCHAR (50)  NULL,
    [f_Quantity]    FLOAT (53)     CONSTRAINT [DF_PR_Employee_DiscountDetail_m_MinRevenue] DEFAULT ((0)) NULL,
    [f_Percentage]  FLOAT (53)     CONSTRAINT [DF_PR_Employee_DiscountDetail_f_Percentage] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [i_Ordinal]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_Employee_DiscountDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Employee_DiscountDetail_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Employee_DiscountDetail_PR_Employee_Discount] FOREIGN KEY ([s_Discount_ID]) REFERENCES [dbo].[PR_Employee_Discount] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

