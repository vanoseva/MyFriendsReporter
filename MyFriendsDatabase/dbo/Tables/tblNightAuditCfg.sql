CREATE TABLE [dbo].[tblNightAuditCfg] (
    [s_ID]           NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [b_EnableAuto]   BIT            NULL,
    [b_AutoBackup]   BIT            NULL,
    [s_PathBackup]   NVARCHAR (500) NULL,
    [b_ShowReminder] BIT            NULL,
    [dt_NightTime]   SMALLDATETIME  NULL,
    [b_NoShow]       BIT            NULL,
    [b_Void]         BIT            NULL,
    [s_VoidNote]     NVARCHAR (255) NULL,
    [b_Cancel]       BIT            NULL,
    [s_CancelNote]   NVARCHAR (255) NULL,
    [b_PostRoomRate] BIT            NULL,
    [b_FreezeData]   BIT            NULL,
    [s_Creator]      NVARCHAR (50)  NULL,
    [s_Editor]       NVARCHAR (50)  NULL,
    [dt_CreateDate]  SMALLDATETIME  NULL,
    [dt_EditDate]    SMALLDATETIME  NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

