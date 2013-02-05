CREATE TABLE [dbo].[PR_BookingDetail] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF__PR_Booking__s_ID__62307D25] DEFAULT (newid()) NOT NULL,
    [BK_ID]       NVARCHAR (50)  NULL,
    [RoomType_ID] NVARCHAR (50)  NOT NULL,
    [PriceVN]     MONEY          NULL,
    [PriceUS]     MONEY          NULL,
    [Qty]         INT            NULL,
    [isFree]      BIT            DEFAULT ((0)) NULL,
    [Note]        NVARCHAR (255) NULL,
    CONSTRAINT [PK_PR_BookingDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_BookingDetail_Ls_RoomType] FOREIGN KEY ([RoomType_ID]) REFERENCES [dbo].[Ls_RoomType] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_BookingDetail_PR_Booking] FOREIGN KEY ([BK_ID]) REFERENCES [dbo].[PR_Booking] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

