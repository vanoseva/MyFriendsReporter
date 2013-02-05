CREATE TABLE [dbo].[PR_OrderDetail_Other] (
    [s_ID]          NVARCHAR (50)   DEFAULT (newid()) NOT NULL,
    [s_OrderID]     NVARCHAR (50)   NULL,
    [s_Product_ID]  NVARCHAR (50)   NULL,
    [f_Quantity]    FLOAT (53)      DEFAULT ((0)) NULL,
    [m_Price]       MONEY           DEFAULT ((0)) NULL,
    [f_Discount]    FLOAT (53)      DEFAULT ((0)) NULL,
    [m_Discount]    MONEY           DEFAULT ((0)) NULL,
    [f_VAT]         FLOAT (53)      DEFAULT ((0)) NULL,
    [s_Store_ID]    NVARCHAR (50)   NULL,
    [s_Unit]        NVARCHAR (50)   NULL,
    [f_Convert]     FLOAT (53)      DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (1024) NULL,
    [b_isPromotion] BIT             DEFAULT ((0)) NULL,
    [b_isFix]       BIT             DEFAULT ((0)) NULL,
    [i_Ordinal]     NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_OrderDetail_Orther] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderDetail_Orther_Ls_Order_Orther] FOREIGN KEY ([s_OrderID]) REFERENCES [dbo].[Ls_Order_Other] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_OrderDetail_Orther_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_OrderDetail_Orther_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

