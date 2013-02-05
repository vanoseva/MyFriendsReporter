CREATE TABLE [dbo].[PR_ImportDetail_EndProduct] (
    [s_ID]         NVARCHAR (50)  NOT NULL,
    [s_Number_ID]  NVARCHAR (50)  NULL,
    [s_Store_ID]   NVARCHAR (50)  NULL,
    [s_Product_ID] NVARCHAR (50)  NULL,
    [s_Unit]       NVARCHAR (50)  NULL,
    [f_Quantity]   FLOAT (53)     NULL,
    [m_Price]      MONEY          NULL,
    [f_Exchange]   FLOAT (53)     NULL,
    [s_Note]       NVARCHAR (250) NULL,
    [i_IDSort]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_ImportDetail_EndProduct] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ImportDetail_EndProduct_Ls_Import_EndProduct] FOREIGN KEY ([s_Number_ID]) REFERENCES [dbo].[Ls_Import_EndProduct] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ImportDetail_EndProduct_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_ImportDetail_EndProduct_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

