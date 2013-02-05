CREATE TABLE [dbo].[rptInstock] (
    [ID]         NVARCHAR (50)  NULL,
    [Store_ID]   NVARCHAR (50)  NULL,
    [Product_ID] NVARCHAR (50)  NULL,
    [Note]       NVARCHAR (255) NULL,
    [QBegin]     FLOAT (53)     NULL,
    [CBegin]     MONEY          NULL,
    [QImport]    FLOAT (53)     NULL,
    [CImport]    MONEY          NULL,
    [QOrder]     FLOAT (53)     NULL,
    [COrder]     MONEY          NULL,
    [Exchange]   FLOAT (53)     CONSTRAINT [DF_rptInstock_Exchange] DEFAULT ((1)) NULL,
    [Unit]       NVARCHAR (50)  NULL
);

