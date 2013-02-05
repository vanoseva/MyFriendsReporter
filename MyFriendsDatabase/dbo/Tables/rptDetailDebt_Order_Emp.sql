CREATE TABLE [dbo].[rptDetailDebt_Order_Emp] (
    [s_Object_ID]   NVARCHAR (50)  NULL,
    [s_Name]        NVARCHAR (500) NULL,
    [NumberID]      NVARCHAR (50)  NULL,
    [DayMonth]      DATETIME       NULL,
    [Debt]          MONEY          NULL,
    [Pay]           MONEY          NULL,
    [PayReturn]     MONEY          NULL,
    [s_EmployeeID]  NVARCHAR (50)  NULL,
    [s_Employee_ID] NVARCHAR (50)  NULL,
    [s_ID]          NVARCHAR (50)  NULL,
    [FullName]      NVARCHAR (200) NULL
);

