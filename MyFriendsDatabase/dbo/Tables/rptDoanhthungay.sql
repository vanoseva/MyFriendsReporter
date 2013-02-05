CREATE TABLE [dbo].[rptDoanhthungay] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_rptDoanhthungay_s_ID] DEFAULT (newid()) NOT NULL,
    [Roomtype_ID]   NVARCHAR (50)  NULL,
    [Roomtype_Name] NVARCHAR (255) NULL,
    [phanloai]      NVARCHAR (50)  NULL,
    [QtyDay]        FLOAT (53)     NULL,
    [PriceDay]      MONEY          NULL,
    [TotalDay]      MONEY          NULL,
    [QtyNight]      FLOAT (53)     NULL,
    [PriceNight]    MONEY          NULL,
    [TotalNight]    MONEY          NULL,
    [Qty]           FLOAT (53)     NULL,
    [Price]         MONEY          NULL,
    [Total]         MONEY          NULL,
    [Per]           FLOAT (53)     NULL,
    [Note]          NVARCHAR (255) NULL,
    [Object_ID]     NVARCHAR (50)  NULL,
    [GuestName]     NVARCHAR (255) NULL,
    [dayMonth]      SMALLDATETIME  NULL,
    [Ordinal]       NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [nRoom]         INT            NULL,
    CONSTRAINT [PK_rptDoanhthungay] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

