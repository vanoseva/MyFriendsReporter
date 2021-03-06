﻿CREATE TABLE [dbo].[Ls_LostAndFound] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_Ls_LostAndFound_s_ID] DEFAULT (newid()) NOT NULL,
    [ItemName]        NVARCHAR (255) NULL,
    [Color]           NVARCHAR (50)  NULL,
    [WhereLost]       NVARCHAR (255) NULL,
    [ItemValue]       MONEY          NULL,
    [Room]            NVARCHAR (50)  NULL,
    [CurrentLocation] NVARCHAR (255) NULL,
    [WhoFound]        NVARCHAR (255) NULL,
    [NameObject]      NVARCHAR (255) NULL,
    [Address]         NVARCHAR (255) NULL,
    [Provinces]       NVARCHAR (50)  NULL,
    [Nationalities]   NVARCHAR (50)  NULL,
    [State]           NVARCHAR (50)  NULL,
    [Phone]           NVARCHAR (50)  NULL,
    [ReturnBy]        NVARCHAR (255) NULL,
    [ReturnDate]      SMALLDATETIME  NULL,
    [DiscardBy]       NVARCHAR (50)  NULL,
    [DiscardDate]     SMALLDATETIME  NULL,
    [IDSort]          INT            IDENTITY (1, 1) NOT NULL,
    [IsLost]          BIT            NULL,
    [DateLost]        SMALLDATETIME  NULL,
    [IsReturnBy]      BIT            NULL,
    [IsDiscardBy]     BIT            NULL,
    CONSTRAINT [PK_Ls_LostAndFound] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

