CREATE TABLE [dbo].[Ls_RoomStatus] (
    [i_ID]    INT           NOT NULL,
    [Descr]   NVARCHAR (50) NULL,
    [NameEng] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Ls_RoomStatus] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

