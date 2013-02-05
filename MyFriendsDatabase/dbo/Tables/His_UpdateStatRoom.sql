CREATE TABLE [dbo].[His_UpdateStatRoom] (
    [s_ID]     NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [i_ID]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [Stat]     INT            NULL,
    [dayMonth] SMALLDATETIME  NULL,
    [Room_ID]  NVARCHAR (50)  NULL,
    [Note]     NVARCHAR (255) DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_PricePartner_Ls_Room] FOREIGN KEY ([Room_ID]) REFERENCES [dbo].[Ls_Room] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

