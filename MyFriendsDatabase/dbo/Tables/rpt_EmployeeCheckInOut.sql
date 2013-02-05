CREATE TABLE [dbo].[rpt_EmployeeCheckInOut] (
    [ID]         NVARCHAR (50)  NULL,
    [i_Year]     INT            NULL,
    [i_Month]    INT            NULL,
    [fromDate]   SMALLDATETIME  NULL,
    [toDate]     SMALLDATETIME  NULL,
    [EmployeeID] NVARCHAR (50)  NOT NULL,
    [checkin]    FLOAT (53)     NULL,
    [absent]     FLOAT (53)     NULL,
    [s_Note]     NVARCHAR (500) NULL
);

