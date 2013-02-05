CREATE TABLE [dbo].[HisPR_BookingArranged] (
    [s_ID]        NVARCHAR (50) CONSTRAINT [DF_HisPR_BookingArranged_s_ID] DEFAULT (newid()) NOT NULL,
    [BKDetail_ID] NVARCHAR (50) NULL,
    [Room_ID]     NVARCHAR (50) NULL,
    [isReg]       BIT           NULL,
    [IDSort]      NUMERIC (18)  NULL,
    CONSTRAINT [PK_HisPR_BookingArranged_1] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_HisPR_BookingArranged_HisPR_BookingDetail] FOREIGN KEY ([BKDetail_ID]) REFERENCES [dbo].[HisPR_BookingDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

