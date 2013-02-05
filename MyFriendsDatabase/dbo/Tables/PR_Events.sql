CREATE TABLE [dbo].[PR_Events] (
    [s_ID]         NVARCHAR (50)   DEFAULT (newid()) NOT NULL,
    [s_UID]        NVARCHAR (50)   NULL,
    [i_TypeID]     INT             NULL,
    [s_Desc]       NVARCHAR (4000) NULL,
    [dt_DayMonth]  SMALLDATETIME   DEFAULT (getdate()) NULL,
    [s_Note]       NVARCHAR (1024) NULL,
    [i_IDSort]     NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [i_GroupEvent] INT             NULL,
    [s_DescEng]    NVARCHAR (MAX)  NULL,
    [IsDel]        BIT             NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Events_LS_GroupEvent] FOREIGN KEY ([i_GroupEvent]) REFERENCES [dbo].[LS_GroupEvent] ([i_ID]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Events_Ls_TypeEvents] FOREIGN KEY ([i_TypeID]) REFERENCES [dbo].[Ls_TypeEvents] ([i_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

