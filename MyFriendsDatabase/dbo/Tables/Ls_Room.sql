CREATE TABLE [dbo].[Ls_Room] (
    [s_ID]          NVARCHAR (50)  NOT NULL,
    [Room_ID]       NVARCHAR (50)  NULL,
    [Roomtype_ID]   NVARCHAR (50)  NULL,
    [nPers]         INT            NULL,
    [Status]        INT            NULL,
    [Phone]         NVARCHAR (50)  NULL,
    [Note]          NVARCHAR (255) NULL,
    [X]             INT            NULL,
    [Y]             INT            NULL,
    [dtCreate]      SMALLDATETIME  CONSTRAINT [DF_Ls_Room_dtCreate] DEFAULT (getdate()) NULL,
    [dtEdit]        SMALLDATETIME  NULL,
    [UCreate]       NVARCHAR (50)  NULL,
    [UEdit]         NVARCHAR (50)  NULL,
    [CO]            NVARCHAR (20)  NULL,
    [Area_ID]       NVARCHAR (50)  NULL,
    [IsTelCKCO]     BIT            DEFAULT ((1)) NULL,
    [DnD]           BIT            NULL,
    [Bar]           BIT            NULL,
    [WakeUP]        BIT            NULL,
    [AddressSrvTEL] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_Room] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Room_Ls_Area] FOREIGN KEY ([Area_ID]) REFERENCES [dbo].[Ls_Area] ([Area_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Ls_Room_Ls_RoomStatus] FOREIGN KEY ([Status]) REFERENCES [dbo].[Ls_RoomStatus] ([i_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Ls_Room_Ls_RoomType] FOREIGN KEY ([Roomtype_ID]) REFERENCES [dbo].[Ls_RoomType] ([s_ID]) ON UPDATE CASCADE
);


GO
Create trigger tr_UpdateRoomstats ON Ls_Room
	for Update
	as
		
		Declare @Room_ID nvarchar(50), @CO nvarchar(10),@stat int
		Select @Room_ID=s_ID,@CO=CO,@stat=Status from Inserted
		if @CO<>'x' and @stat=0
			Insert into His_UpdateStatRoom(Stat ,dayMonth ,Room_ID) values(@stat,getdate(),@Room_ID)