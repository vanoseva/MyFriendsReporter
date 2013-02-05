CREATE TABLE [dbo].[Ls_RoomType] (
    [s_ID]              NVARCHAR (50)  CONSTRAINT [DF_Ls_RoomType_s_ID] DEFAULT (newid()) NOT NULL,
    [RoomType_ID]       NVARCHAR (50)  NULL,
    [s_Name]            NVARCHAR (100) NULL,
    [PriceDay_VND]      MONEY          NULL,
    [PriceDay_USD]      MONEY          NULL,
    [Ext_VN]            MONEY          NULL,
    [Ext_USD]           MONEY          NULL,
    [PriceHour_VND]     MONEY          NULL,
    [PriceHour_USD]     MONEY          NULL,
    [Note]              NVARCHAR (255) NULL,
    [Ordinal]           INT            NULL,
    [nPerOver]          INT            NULL,
    [dtCreate]          SMALLDATETIME  CONSTRAINT [DF_Ls_RoomType_dtCreate] DEFAULT (getdate()) NULL,
    [dtEdit]            SMALLDATETIME  NULL,
    [UCreate]           NVARCHAR (50)  NULL,
    [UEdit]             NVARCHAR (50)  NULL,
    [nPers]             INT            CONSTRAINT [DF_Ls_RoomType_nPers] DEFAULT ((1)) NULL,
    [Ext_HVND]          MONEY          NULL,
    [Ext_HUSD]          MONEY          NULL,
    [nPers_H]           INT            NULL,
    [fSpreadVND]        MONEY          NULL,
    [fSpreadUSD]        MONEY          NULL,
    [isAllowPriceMonth] BIT            NULL,
    [iDay]              INT            NULL,
    [mPriceMonthVN]     MONEY          NULL,
    [mPriceMonthUS]     MONEY          NULL,
    [mExtMonthVN]       MONEY          NULL,
    [mExtMonthUS]       MONEY          NULL,
    [isSale]            BIT            NULL,
    CONSTRAINT [PK_Ls_RoomType] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'phụ trội tính theo giờ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_RoomType', @level2type = N'COLUMN', @level2name = N'Ext_HVND';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số người tính theo giờ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_RoomType', @level2type = N'COLUMN', @level2name = N'nPers_H';

