CREATE TABLE [dbo].[PR_OrderDetails] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_OrderDetails_s_ID] DEFAULT (newid()) NOT NULL,
    [s_OrderID]     NVARCHAR (50)  NOT NULL,
    [s_Product_ID]  NVARCHAR (50)  NULL,
    [f_Quantity]    FLOAT (53)     CONSTRAINT [DF_OrderDetails_f_Quantity] DEFAULT ((0)) NULL,
    [m_Price]       MONEY          CONSTRAINT [DF_OrderDetails_m_Price] DEFAULT ((0)) NULL,
    [f_Discount]    FLOAT (53)     CONSTRAINT [DF_OrderDetails_f_Discount] DEFAULT ((0)) NULL,
    [m_Discount]    MONEY          CONSTRAINT [DF_PR_OrderDetails_m_Discount] DEFAULT ((0)) NULL,
    [f_VAT]         FLOAT (53)     CONSTRAINT [DF_PR_OrderDetails_f_VAT] DEFAULT ((0)) NULL,
    [s_Store_ID]    NVARCHAR (50)  NULL,
    [s_Unit]        NVARCHAR (50)  NULL,
    [f_Convert]     FLOAT (53)     CONSTRAINT [DF_OrderDetails_f_Quidoi] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [b_isPromotion] BIT            CONSTRAINT [DF_OrderDetails_b_isKM] DEFAULT ((0)) NULL,
    [b_isFix]       BIT            CONSTRAINT [DF_OrderDetails_b_isFix] DEFAULT ((0)) NULL,
    [i_Ordinal]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderDetails_LS_Orders] FOREIGN KEY ([s_OrderID]) REFERENCES [dbo].[LS_Orders] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_OrderDetails_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_OrderDetails_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON UPDATE CASCADE
);

