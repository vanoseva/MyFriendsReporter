CREATE TABLE [dbo].[Ls_Reminder] (
    [s_ID]             NVARCHAR (50)  NOT NULL,
    [Room_ID]          NVARCHAR (50)  NULL,
    [dt_Remind]        SMALLDATETIME  NULL,
    [s_Title]          NVARCHAR (50)  NULL,
    [s_Content]        NVARCHAR (500) NULL,
    [i_Type]           INT            NULL,
    [i_Priority]       INT            NULL,
    [s_DeskClerk]      NVARCHAR (50)  NULL,
    [i_Interval]       INT            NULL,
    [isStopCurring]    BIT            NULL,
    [dt_IntervalAfter] SMALLDATETIME  NULL,
    [isRemind]         BIT            CONSTRAINT [DF_Ls_Reminder_isRemind] DEFAULT ((0)) NULL,
    [dt_Create]        SMALLDATETIME  NULL,
    [dt_Edit]          SMALLDATETIME  NULL,
    [s_UserCreate]     NVARCHAR (50)  NULL,
    [s_UserEdit]       NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_Reminder] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Reminder_Ls_Room] FOREIGN KEY ([Room_ID]) REFERENCES [dbo].[Ls_Room] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'lấy s_ID của ls_Rooms', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'Room_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ngày giờ nhắc nhở', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'dt_Remind';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Kiểu nhắc nhở', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'i_Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mức độ ưu tiên nếu trùng ngày giờ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'i_Priority';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nhắc nhở tại màn hình nào,lấy dia chi IP cua máy đang online', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N's_DeskClerk';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Thỉnh thoảng nhắc nhở theo: Once,Daily,Weekly,Monthly,Yearly nếu ko có thời gian cụ thể thì chỉ lấy giờ hệ thống', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'i_Interval';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'nếu có chu kì nhắc nhở thì có khoảng thời gian dừng hay ko?', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'isStopCurring';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nếu ko phải là thỉnh thoảng nhắc là Once thì đây là ngày kết thúc lịch nhắc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'dt_IntervalAfter';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0: la chua xu ly,1: la da xu ly(da nhac nho)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Ls_Reminder', @level2type = N'COLUMN', @level2name = N'isRemind';

