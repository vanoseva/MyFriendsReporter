CREATE TABLE [dbo].[LS_CompanyInfo] (
    [CoID]      NVARCHAR (50)  NOT NULL,
    [CoName]    NVARCHAR (300) NOT NULL,
    [CoFax]     NVARCHAR (50)  NULL,
    [CoPhone]   NVARCHAR (50)  NULL,
    [CoAddress] NVARCHAR (300) NULL,
    CONSTRAINT [PK_LS_CompanyInfo] PRIMARY KEY CLUSTERED ([CoID] ASC)
);

