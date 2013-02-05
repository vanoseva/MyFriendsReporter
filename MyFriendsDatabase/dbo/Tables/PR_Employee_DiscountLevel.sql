CREATE TABLE [dbo].[PR_Employee_DiscountLevel] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_PR_Employee_DiscountLevel_s_ID] DEFAULT (N'newID') NOT NULL,
    [s_Discount_ID] NVARCHAR (50)  NULL,
    [m_MinRevenue]  MONEY          NULL,
    [f_Percentage]  FLOAT (53)     NULL,
    [i_IDSort]      NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [s_Note]        NVARCHAR (250) NULL,
    CONSTRAINT [PK_PR_Employee_DiscountLevel] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Employee_DiscountLevel_PR_Employee_Discount] FOREIGN KEY ([s_Discount_ID]) REFERENCES [dbo].[PR_Employee_Discount] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

