CREATE TABLE [dbo].[LS_Discount_Product] (
    [s_ID]       NVARCHAR (50)  CONSTRAINT [DF_PR_Object_Discount_Product_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Name]     NVARCHAR (255) NULL,
    [d_FromDate] SMALLDATETIME  NULL,
    [d_ToDate]   SMALLDATETIME  NULL,
    [s_Note]     NVARCHAR (500) NULL,
    [i_Ordinal]  NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [b_Valid]    BIT            CONSTRAINT [DF_PR_Object_Discount_Product_b_Valid] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_PR_Object_Discount_Product] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

