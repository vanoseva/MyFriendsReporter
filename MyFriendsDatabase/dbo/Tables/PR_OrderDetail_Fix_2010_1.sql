CREATE TABLE [dbo].[PR_OrderDetail_Fix_2010_1] (
    [s_ID]           NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [s_OrdDetail_ID] NVARCHAR (50) NULL,
    [s_Import_ID]    NVARCHAR (50) NULL,
    [Case_ID]        NVARCHAR (50) NULL,
    [f_Quantity]     FLOAT (53)    DEFAULT ((0)) NULL,
    [m_Price]        MONEY         NULL,
    [i_IDSort]       NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_PR_OrderDetail_Fix_2010_1_PR_OrderDetails] FOREIGN KEY ([s_OrdDetail_ID]) REFERENCES [dbo].[PR_OrderDetails_2010_1] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

