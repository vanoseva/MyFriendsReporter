CREATE TABLE [dbo].[Ls_WakeUp] (
    [s_ID]               NVARCHAR (50)  CONSTRAINT [DF_Ls_WakeUp_s_ID] DEFAULT (newid()) NOT NULL,
    [Room_ID]            NVARCHAR (50)  NULL,
    [s_Title]            NVARCHAR (500) NULL,
    [dt_Date]            SMALLDATETIME  NULL,
    [b_isCancelCall]     BIT            CONSTRAINT [DF_Ls_WakeUp_b_isCancelCall] DEFAULT ((0)) NULL,
    [s_CancelCallReason] NVARCHAR (500) NULL,
    [s_Creater]          NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_WakeUp] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

