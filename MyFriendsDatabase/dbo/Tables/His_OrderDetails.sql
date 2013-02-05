CREATE TABLE [dbo].[His_OrderDetails] (
    [s_ID]           NVARCHAR (50)   CONSTRAINT [DF__His_OrderD__s_ID__38FA28BF] DEFAULT (newid()) NULL,
    [s_OrderID]      NVARCHAR (50)   NULL,
    [s_Product_ID]   NVARCHAR (50)   NULL,
    [s_Product_Name] NVARCHAR (255)  NULL,
    [f_Quantity]     FLOAT (53)      CONSTRAINT [DF__His_Order__f_Qua__39EE4CF8] DEFAULT ((0)) NULL,
    [m_Price]        MONEY           CONSTRAINT [DF__His_Order__m_Pri__3AE27131] DEFAULT ((0)) NULL,
    [f_Discount]     FLOAT (53)      CONSTRAINT [DF__His_Order__f_Dis__3BD6956A] DEFAULT ((0)) NULL,
    [m_Discount]     MONEY           CONSTRAINT [DF__His_Order__m_Dis__3CCAB9A3] DEFAULT ((0)) NULL,
    [f_VAT]          FLOAT (53)      CONSTRAINT [DF__His_Order__f_VAT__3DBEDDDC] DEFAULT ((0)) NULL,
    [s_Store_ID]     NVARCHAR (50)   NULL,
    [s_Unit]         NVARCHAR (50)   NULL,
    [f_Convert]      FLOAT (53)      CONSTRAINT [DF__His_Order__f_Con__3EB30215] DEFAULT ((0)) NULL,
    [s_Note]         NVARCHAR (1024) NULL,
    [b_isPromotion]  BIT             CONSTRAINT [DF__His_Order__b_isP__3FA7264E] DEFAULT ((0)) NULL,
    [b_isFix]        BIT             CONSTRAINT [DF__His_Order__b_isF__409B4A87] DEFAULT ((0)) NULL,
    [i_Ordinal]      NUMERIC (18)    NULL,
    [s_Purchase_ID]  NVARCHAR (50)   NULL,
    CONSTRAINT [FK_His_OrderDetails_His_Orders] FOREIGN KEY ([s_OrderID]) REFERENCES [dbo].[His_Orders] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

