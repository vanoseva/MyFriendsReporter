CREATE TABLE [dbo].[HisRoomType] (
    [EventID]       NVARCHAR (50)  CONSTRAINT [DF_HisRoomType_EventID] DEFAULT (newid()) NOT NULL,
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_HisRoomType_s_ID] DEFAULT (newid()) NULL,
    [RoomType_ID]   NVARCHAR (50)  NULL,
    [s_Name]        NVARCHAR (100) NULL,
    [PriceDay_VND]  MONEY          NULL,
    [PriceDay_USD]  MONEY          NULL,
    [Ext_VN]        MONEY          NULL,
    [Ext_USD]       MONEY          NULL,
    [PriceHour_VND] MONEY          NULL,
    [PriceHour_USD] MONEY          NULL,
    [Note]          NVARCHAR (255) NULL,
    [Ordinal]       INT            NOT NULL,
    [nPerOver]      INT            NULL,
    [dtCreate]      SMALLDATETIME  CONSTRAINT [DF_HisRoomType_dtCreate] DEFAULT (getdate()) NULL,
    [dtEdit]        SMALLDATETIME  NULL,
    [UCreate]       NVARCHAR (50)  NULL,
    [UEdit]         NVARCHAR (50)  NULL,
    CONSTRAINT [PK_HisRoomType] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

