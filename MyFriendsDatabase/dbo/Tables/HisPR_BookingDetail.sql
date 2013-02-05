CREATE TABLE [dbo].[HisPR_BookingDetail] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF_HisPR_BookingDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [BK_ID]       NVARCHAR (50)  NULL,
    [RoomType_ID] NVARCHAR (50)  NULL,
    [PriceVN]     MONEY          NULL,
    [PriceUS]     MONEY          NULL,
    [Qty]         INT            NULL,
    [isFree]      BIT            DEFAULT ((0)) NULL,
    [Note]        NVARCHAR (255) NULL,
    CONSTRAINT [PK_HisPR_BookingDetail_1] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_HisPR_BookingDetail_HisPR_Booking] FOREIGN KEY ([BK_ID]) REFERENCES [dbo].[HisPR_Booking] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

