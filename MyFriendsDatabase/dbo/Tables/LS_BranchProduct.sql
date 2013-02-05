CREATE TABLE [dbo].[LS_BranchProduct] (
    [s_ID]               NVARCHAR (50)  CONSTRAINT [DF_LS_ProductIndustries_s_ID] DEFAULT (newid()) NOT NULL,
    [s_BranchProduct_ID] NVARCHAR (50)  NULL,
    [s_Name]             NVARCHAR (255) NULL,
    [s_Note]             NVARCHAR (500) NULL,
    [i_Ordinal]          NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_LS_ProductIndustries] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

