CREATE TABLE [dbo].[Pr_Product_Store] (
    [s_ID]            NVARCHAR (50) CONSTRAINT [DF_Pr_Product_Store_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Product_ID]    NVARCHAR (50) NULL,
    [s_Store_ID]      NVARCHAR (50) NULL,
    [f_QuantityBegin] FLOAT (53)    CONSTRAINT [DF_Pr_Product_Store_f_QuantityBegin] DEFAULT ((0)) NULL,
    [m_PriceBegin]    MONEY         CONSTRAINT [DF_Pr_Product_Store_m_PriceBegin] DEFAULT ((0)) NULL,
    [f_CurInstock]    FLOAT (53)    CONSTRAINT [DF_Pr_Product_Store_f_Instock] DEFAULT ((0)) NULL,
    [f_MinInstock]    FLOAT (53)    CONSTRAINT [DF_Pr_Product_Store_f_MinInstock] DEFAULT ((0)) NULL,
    [f_MaxInstock]    FLOAT (53)    CONSTRAINT [DF_Pr_Product_Store_fMaxInstock] DEFAULT ((0)) NULL,
    [i_IDSort]        NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    [b_isView]        BIT           CONSTRAINT [DF_Pr_Product_Store_b_isView] DEFAULT ((1)) NULL,
    [s_Unit]          NVARCHAR (50) NULL,
    CONSTRAINT [PK_Pr_Product_Store] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_Product_Store_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Pr_Product_Store_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

