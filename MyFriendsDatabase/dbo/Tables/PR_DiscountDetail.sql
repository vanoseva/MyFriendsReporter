CREATE TABLE [dbo].[PR_DiscountDetail] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_LS_DiscountDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Discount_ID] NVARCHAR (50)  NULL,
    [m_MinRevenue]  MONEY          CONSTRAINT [DF_LS_DiscountDetail_m_MinRevenue] DEFAULT ((0)) NULL,
    [f_Percentage]  FLOAT (53)     CONSTRAINT [DF_LS_DiscountDetail_f_Percentage] DEFAULT ((0)) NULL,
    [m_Discount]    MONEY          CONSTRAINT [DF_PR_DiscountDetail_m_Discount] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [i_Ordinal]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_LS_DiscountDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_DiscountDetail_LS_Discount] FOREIGN KEY ([s_Discount_ID]) REFERENCES [dbo].[LS_Discount] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

