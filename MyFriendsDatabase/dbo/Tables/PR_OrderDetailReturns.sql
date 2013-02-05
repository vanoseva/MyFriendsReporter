CREATE TABLE [dbo].[PR_OrderDetailReturns] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF__PR_OrderDe__s_ID__10216507] DEFAULT (newid()) NOT NULL,
    [s_Order_ID]    NVARCHAR (50)  NOT NULL,
    [s_Product_ID]  NVARCHAR (50)  NULL,
    [f_Quantity]    FLOAT (53)     CONSTRAINT [DF__PR_OrderD__f_Qua__11158940] DEFAULT ((0)) NULL,
    [m_Price]       MONEY          CONSTRAINT [DF__PR_OrderD__m_Pri__1209AD79] DEFAULT ((0)) NULL,
    [f_Discount]    FLOAT (53)     CONSTRAINT [DF__PR_OrderD__f_Dis__12FDD1B2] DEFAULT ((0)) NULL,
    [s_Store_ID]    NVARCHAR (50)  NULL,
    [s_Unit]        NVARCHAR (50)  NULL,
    [f_Convert]     FLOAT (53)     CONSTRAINT [DF__PR_OrderD__f_Con__13F1F5EB] DEFAULT ((0)) NULL,
    [b_isPromotion] BIT            CONSTRAINT [DF__PR_OrderD__b_isP__14E61A24] DEFAULT ((0)) NULL,
    [b_isFix]       BIT            CONSTRAINT [DF__PR_OrderD__b_isF__15DA3E5D] DEFAULT ((0)) NULL,
    [i_IDSort]      NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [ImportID]      NVARCHAR (50)  NULL,
    [s_Note]        NVARCHAR (500) NULL,
    CONSTRAINT [PK_PR_OrderDetailReturns] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderDetailReturns_LS_OrderReturns] FOREIGN KEY ([s_Order_ID]) REFERENCES [dbo].[LS_OrderReturns] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

