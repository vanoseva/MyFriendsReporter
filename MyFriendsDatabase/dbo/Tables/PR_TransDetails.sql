CREATE TABLE [dbo].[PR_TransDetails] (
    [s_ID]            NVARCHAR (50)   CONSTRAINT [DF_PR_TransDetails_s_ID] DEFAULT (newid()) NOT NULL,
    [s_NumberID]      NVARCHAR (50)   NULL,
    [s_Product_ID]    NVARCHAR (50)   NULL,
    [s_Unit]          NVARCHAR (50)   NULL,
    [f_Exchange]      FLOAT (53)      CONSTRAINT [DF_PR_TransDetails_f_Exchange] DEFAULT ((0)) NULL,
    [s_StoreSource]   NVARCHAR (50)   NULL,
    [s_StoreDes]      NVARCHAR (50)   NULL,
    [f_Quantity]      FLOAT (53)      CONSTRAINT [DF_PR_TransDetails_f_Quantity] DEFAULT ((0)) NULL,
    [m_Price]         MONEY           CONSTRAINT [DF_PR_TransDetails_m_Price] DEFAULT ((0)) NULL,
    [s_ImportID]      NVARCHAR (50)   NULL,
    [s_Note]          NVARCHAR (1024) NULL,
    [f_QuantityOrder] FLOAT (53)      CONSTRAINT [DF_PR_TransDetails_f_QuantityOrder] DEFAULT ((0)) NULL,
    [i_IDsort]        NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_TransDetails] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_TransDetails_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_TransDetails_LS_Stores] FOREIGN KEY ([s_StoreSource]) REFERENCES [dbo].[LS_Stores] ([s_ID]),
    CONSTRAINT [FK_PR_TransDetails_LS_Stores1] FOREIGN KEY ([s_StoreDes]) REFERENCES [dbo].[LS_Stores] ([s_ID]),
    CONSTRAINT [FK_PR_TransDetails_LS_Trans] FOREIGN KEY ([s_NumberID]) REFERENCES [dbo].[LS_Trans] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

