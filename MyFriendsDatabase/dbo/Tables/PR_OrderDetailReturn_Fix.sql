CREATE TABLE [dbo].[PR_OrderDetailReturn_Fix] (
    [s_ID]           NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [s_OrdDetail_ID] NVARCHAR (50) NULL,
    [s_Import_ID]    NVARCHAR (50) NULL,
    [Case_ID]        NVARCHAR (50) NULL,
    [f_Quantity]     FLOAT (53)    DEFAULT ((0)) NULL,
    [i_IDSort]       NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_OrderDetailReturn_Fix_PR_OrderDetailReturns] FOREIGN KEY ([s_OrdDetail_ID]) REFERENCES [dbo].[PR_OrderDetailReturns] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

