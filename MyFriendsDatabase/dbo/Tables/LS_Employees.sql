CREATE TABLE [dbo].[LS_Employees] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_LS_Employees_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Employee_ID] NVARCHAR (50)  NULL,
    [s_Name]        NVARCHAR (255) NULL,
    [s_Address]     NVARCHAR (500) NULL,
    [s_Phone1]      NVARCHAR (50)  NULL,
    [s_Phone2]      NVARCHAR (50)  NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [i_Ordinal]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [s_Email]       NVARCHAR (50)  NULL,
    [i_Position]    NUMERIC (18)   NULL,
    [b_Sex]         BIT            NULL,
    [im_Photo]      IMAGE          NULL,
    [dt_DOB]        DATETIME       NULL,
    [dt_DaysToWork] DATETIME       NULL,
    [dt_Holidays]   DATETIME       NULL,
    [s_Reason]      NVARCHAR (500) NULL,
    [m_BasicSalary] MONEY          NULL,
    [i_NofDay]      INT            NULL,
    [m_SalaryOf]    MONEY          NULL,
    [s_Currency1]   NVARCHAR (50)  NULL,
    [s_Currency2]   NVARCHAR (50)  NULL,
    [b_IsActive]    BIT            NULL,
    [s_UserCreate]  NVARCHAR (50)  NULL,
    [dt_Create]     SMALLDATETIME  NULL,
    [s_UserEdit]    NVARCHAR (50)  NULL,
    [dt_LastUpdate] SMALLDATETIME  NULL,
    [b_isSales]     BIT            NULL,
    [m_BeginDebt]   MONEY          NULL,
    [DisplayName]   NVARCHAR (255) NULL,
    [ShiftNewID]    NVARCHAR (50)  NULL,
    [UidLogin]      NVARCHAR (255) NULL,
    [PwdLogin]      NVARCHAR (255) NULL,
    CONSTRAINT [PK_LS_Employees] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chức vụ,lấy i_ID từ Ls_Position', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N'i_Position';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ngày nghỉ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N'dt_Holidays';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lý do nghỉ việc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N's_Reason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lương căn bản', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N'm_BasicSalary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Số ngày tính công', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N'i_NofDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đơn vị tiền tệ cho Lương căn bản và Lương theo ca,lấy từ i_ID của Ls_Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N's_Currency1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đơn vị tiền tệ cho Lương căn bản và Lương theo ca,lấy từ i_ID của Ls_Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N's_Currency2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lương theo doanh số', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Employees', @level2type = N'COLUMN', @level2name = N'b_isSales';

