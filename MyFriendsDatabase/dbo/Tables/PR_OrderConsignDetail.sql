CREATE TABLE [dbo].[PR_OrderConsignDetail] (
    [s_ID]         NVARCHAR (50) CONSTRAINT [DF__PR_OrderCo__s_ID__7FB5F314] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]   NVARCHAR (50) NOT NULL,
    [s_Product_ID] NVARCHAR (50) NULL,
    [f_Quantity]   FLOAT (53)    CONSTRAINT [DF__PR_OrderC__f_Qua__00AA174D] DEFAULT ((0)) NULL,
    [m_Price]      MONEY         CONSTRAINT [DF__PR_OrderC__m_Pri__019E3B86] DEFAULT ((0)) NULL,
    [f_Discount]   FLOAT (53)    CONSTRAINT [DF__PR_OrderC__f_Dis__02925FBF] DEFAULT ((0)) NULL,
    [s_Store_ID]   NVARCHAR (50) NULL,
    [s_Unit]       NVARCHAR (50) NULL,
    [f_Convert]    FLOAT (53)    CONSTRAINT [DF__PR_OrderC__f_Con__038683F8] DEFAULT ((0)) NULL,
    [b_isFix]      BIT           CONSTRAINT [DF__PR_OrderC__b_isF__047AA831] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_PR_OrderConsignDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderConsignDetail_LS_OrderConsign] FOREIGN KEY ([s_Order_ID]) REFERENCES [dbo].[LS_OrderConsign] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_OrderConsignDetail_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

