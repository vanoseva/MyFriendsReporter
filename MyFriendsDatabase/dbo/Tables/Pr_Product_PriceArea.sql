CREATE TABLE [dbo].[Pr_Product_PriceArea] (
    [s_ID]         NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [i_Shift]      INT           NULL,
    [s_Area_ID]    NVARCHAR (50) NULL,
    [t_From]       DATETIME      NULL,
    [t_To]         DATETIME      NULL,
    [s_Product_ID] NVARCHAR (50) NULL,
    [m_Price]      MONEY         NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_Product_PriceArea_Ls_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

