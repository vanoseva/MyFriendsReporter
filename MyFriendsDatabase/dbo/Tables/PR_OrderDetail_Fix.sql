CREATE TABLE [dbo].[PR_OrderDetail_Fix] (
    [s_ID]           NVARCHAR (50) CONSTRAINT [DF_PR_OrderDetail_Fix_s_ID] DEFAULT (newid()) NOT NULL,
    [s_OrdDetail_ID] NVARCHAR (50) NULL,
    [s_Import_ID]    NVARCHAR (50) NULL,
    [f_Quantity]     FLOAT (53)    CONSTRAINT [DF_PR_OrderDetail_Fix_f_Quantity] DEFAULT ((0)) NULL,
    [i_IDSort]       NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_OrderDetail_Fix] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderDetail_Fix_PR_OrderDetails] FOREIGN KEY ([s_OrdDetail_ID]) REFERENCES [dbo].[PR_OrderDetails] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

