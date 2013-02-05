CREATE TABLE [dbo].[His_Service] (
    [EventID]         NVARCHAR (50)  NOT NULL,
    [s_ID]            NVARCHAR (50)  NULL,
    [Service_ID]      NVARCHAR (50)  NULL,
    [s_Name]          NVARCHAR (255) NULL,
    [Unit]            NVARCHAR (50)  NULL,
    [ServiceGroup_ID] NVARCHAR (50)  NULL,
    [PriceVND]        MONEY          NULL,
    [PriceUSD]        MONEY          NULL,
    [Valid]           BIT            NULL,
    [Ordinal]         INT            NULL,
    [Account_ID]      NVARCHAR (50)  NULL,
    CONSTRAINT [PK_His_Service] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

