CREATE TABLE [dbo].[rptStoreCard] (
    [s_NumberID] NVARCHAR (50)  NULL,
    [ID]         NVARCHAR (50)  NULL,
    [Ordinal]    INT            NULL,
    [NumberID]   NVARCHAR (50)  NULL,
    [DayMonth]   SMALLDATETIME  NULL,
    [Note]       NVARCHAR (255) NULL,
    [Price]      MONEY          NULL,
    [QImport]    FLOAT (53)     NULL,
    [QOrder]     FLOAT (53)     NULL,
    [QInstock]   FLOAT (53)     NULL,
    [Exchange]   FLOAT (53)     NULL,
    [Unit]       NVARCHAR (50)  NULL
);

