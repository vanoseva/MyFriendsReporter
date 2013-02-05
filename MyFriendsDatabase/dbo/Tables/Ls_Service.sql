CREATE TABLE [dbo].[Ls_Service] (
    [s_ID]            NVARCHAR (50)  NOT NULL,
    [Service_ID]      NVARCHAR (50)  NULL,
    [s_Name]          NVARCHAR (255) NULL,
    [Unit]            NVARCHAR (50)  NULL,
    [ServiceGroup_ID] NVARCHAR (50)  NULL,
    [PriceVND]        MONEY          NULL,
    [PriceUSD]        MONEY          NULL,
    [Valid]           BIT            CONSTRAINT [DF_Ls_Service_Valid] DEFAULT ((1)) NULL,
    [Ordinal]         INT            NULL,
    [Account_ID]      NVARCHAR (50)  NULL,
    [isDoneSend]      BIT            DEFAULT ((0)) NULL,
    CONSTRAINT [PK_Ls_Service] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Service_Ls_ServiceGroup] FOREIGN KEY ([ServiceGroup_ID]) REFERENCES [dbo].[Ls_ServiceGroup] ([s_ID]) ON UPDATE CASCADE
);

