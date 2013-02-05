CREATE TABLE [dbo].[PR_NoshowBooking] (
    [s_ID]         NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [BK_ID]        NVARCHAR (50)  NULL,
    [NumberID]     NVARCHAR (50)  NULL,
    [CusName]      NVARCHAR (255) NULL,
    [dayMonth]     SMALLDATETIME  NULL,
    [sHour]        NVARCHAR (50)  NULL,
    [fullDate]     SMALLDATETIME  NULL,
    [nDay]         FLOAT (53)     NULL,
    [Total]        MONEY          NULL,
    [Ordinal]      INT            NULL,
    [Note]         NVARCHAR (255) NULL,
    [RoomNight]    FLOAT (53)     NULL,
    [RoomNightFOC] FLOAT (53)     NULL,
    [Per]          FLOAT (53)     NULL,
    [OriginTotal]  MONEY          NULL,
    [from_date]    SMALLDATETIME  NULL,
    [to_date]      SMALLDATETIME  NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

