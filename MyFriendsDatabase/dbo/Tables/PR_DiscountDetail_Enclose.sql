CREATE TABLE [dbo].[PR_DiscountDetail_Enclose] (
    [s_ID]                NVARCHAR (50)  CONSTRAINT [DF_PR_DiscountDetail_Enclose_s_ID] DEFAULT (newid()) NOT NULL,
    [s_DiscountDetail_ID] NVARCHAR (50)  NULL,
    [m_MinRevenue]        MONEY          CONSTRAINT [DF_PR_DiscountDetail_Enclose_m_MinRevenue] DEFAULT ((0)) NULL,
    [s_Product_ID]        NVARCHAR (50)  NULL,
    [f_Quantity]          FLOAT (53)     CONSTRAINT [DF_PR_DiscountDetail_Enclose_f_Quantity] DEFAULT ((0)) NULL,
    [s_Note]              NVARCHAR (500) NULL,
    [i_Ordinal]           NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_DiscountDetail_Enclose] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_DiscountDetail_Enclose_PR_DiscountDetail] FOREIGN KEY ([s_DiscountDetail_ID]) REFERENCES [dbo].[PR_DiscountDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

