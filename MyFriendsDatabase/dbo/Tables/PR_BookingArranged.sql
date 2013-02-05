CREATE TABLE [dbo].[PR_BookingArranged] (
    [s_ID]        NVARCHAR (50) CONSTRAINT [DF_PR_BookingArranged_s_ID] DEFAULT (newid()) NOT NULL,
    [BKDetail_ID] NVARCHAR (50) NOT NULL,
    [Room_ID]     NVARCHAR (50) NULL,
    [isReg]       BIT           NULL,
    [IDSort]      NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_BookingArranged] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_BookingArranged_PR_BookingDetail] FOREIGN KEY ([BKDetail_ID]) REFERENCES [dbo].[PR_BookingDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

