CREATE TABLE [dbo].[Ls_PriceServiceGroup] (
    [s_ID]    NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [s_Code]  NVARCHAR (50)  NULL,
    [s_Name]  NVARCHAR (100) NULL,
    [Ordinal] INT            NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

