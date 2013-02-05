CREATE TABLE [dbo].[tblLockBook] (
    [ID]     INT            NOT NULL,
    [Name]   NVARCHAR (255) NULL,
    [Valid]  BIT            NULL,
    [toDate] SMALLDATETIME  NULL,
    [Note]   NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

