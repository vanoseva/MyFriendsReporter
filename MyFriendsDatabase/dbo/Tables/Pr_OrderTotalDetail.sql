CREATE TABLE [dbo].[Pr_OrderTotalDetail] (
    [s_ID]            NVARCHAR (50) CONSTRAINT [DF_Pr_OrderTotalDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [s_OrderTotal_ID] NVARCHAR (50) NULL,
    [s_Order_ID]      NVARCHAR (50) NULL,
    CONSTRAINT [PK_Pr_OrderTotalDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

