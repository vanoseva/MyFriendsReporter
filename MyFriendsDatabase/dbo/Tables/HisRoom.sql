CREATE TABLE [dbo].[HisRoom] (
    [EventID]     NVARCHAR (50)  CONSTRAINT [DF_HisRoom_EventID] DEFAULT (newid()) NOT NULL,
    [s_ID]        NVARCHAR (50)  NULL,
    [Room_ID]     NVARCHAR (50)  NULL,
    [Roomtype_ID] NVARCHAR (50)  NULL,
    [nPers]       INT            NULL,
    [Status]      INT            NULL,
    [Phone]       NVARCHAR (50)  NULL,
    [Note]        NVARCHAR (255) NULL,
    [X]           INT            NULL,
    [Y]           INT            NULL,
    [dtCreate]    SMALLDATETIME  CONSTRAINT [DF_HisRoom_dtCreate] DEFAULT (getdate()) NULL,
    [dtEdit]      SMALLDATETIME  NULL,
    [UCreate]     NVARCHAR (50)  NULL,
    [UEdit]       NVARCHAR (50)  NULL,
    CONSTRAINT [PK_HisRoom] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

