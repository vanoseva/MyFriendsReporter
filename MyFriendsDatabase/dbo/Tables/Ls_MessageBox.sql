CREATE TABLE [dbo].[Ls_MessageBox] (
    [s_ID]          NVARCHAR (50)  NOT NULL,
    [s_Sender]      NVARCHAR (50)  NULL,
    [s_Recipients]  NVARCHAR (500) NULL,
    [s_Subject]     NVARCHAR (100) NULL,
    [s_Message]     NVARCHAR (MAX) NULL,
    [dt_CreateDate] SMALLDATETIME  NULL,
    [b_isTrash]     BIT            NULL,
    [b_isRead]      BIT            NULL,
    [UserID]        NVARCHAR (50)  NULL,
    [iType]         INT            NULL,
    CONSTRAINT [PK_Ls_MessageBox] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

