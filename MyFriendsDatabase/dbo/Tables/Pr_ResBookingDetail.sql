CREATE TABLE [dbo].[Pr_ResBookingDetail] (
    [s_ID]     NVARCHAR (50) CONSTRAINT [DF_Pr_ResBookingDetail_s_ID] DEFAULT (newid()) NOT NULL,
    [ResBK_ID] NVARCHAR (50) NULL,
    [Table_ID] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Pr_ResBookingDetail] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_ResBookingDetail_Pr_ResBooking] FOREIGN KEY ([ResBK_ID]) REFERENCES [dbo].[PR_ResBooking] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

