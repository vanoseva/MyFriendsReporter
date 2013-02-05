CREATE TABLE [dbo].[Pr_DisProOfWeek] (
    [s_ID]         NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [s_Product_ID] NVARCHAR (50) NULL,
    [t_From]       DATETIME      NULL,
    [t_To]         DATETIME      NULL,
    [T2]           BIT           NULL,
    [T3]           BIT           NULL,
    [T4]           BIT           NULL,
    [T5]           BIT           NULL,
    [T6]           BIT           NULL,
    [T7]           BIT           NULL,
    [CN]           BIT           NULL,
    [f_Discount]   FLOAT (53)    NULL,
    [i_IDSort]     INT           NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_DisProOfWeek_Ls_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

