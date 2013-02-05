CREATE TABLE [dbo].[PR_OrderDetails_2010_1] (
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
    [s_Purchase_ID] NVARCHAR (50)   NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderDetails_2010_1_LS_Orders] FOREIGN KEY ([s_OrderID]) REFERENCES [dbo].[Ls_Orders_2010_1] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

