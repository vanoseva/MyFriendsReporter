CREATE TABLE [dbo].[Ls_TransCurr] (
    [s_ID]         NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [s_NumberID]   NVARCHAR (50)  NULL,
    [dt_DayMonth]  DATETIME       NULL,
    [i_Type]       INT            NULL,
    [s_BankSource] NVARCHAR (50)  NULL,
    [s_BankDes]    NVARCHAR (50)  NULL,
    [s_EmpSource]  NVARCHAR (50)  NULL,
    [s_EmpDes]     NVARCHAR (50)  NULL,
    [m_Total]      MONEY          DEFAULT ((0)) NULL,
    [f_Exchange]   FLOAT (53)     DEFAULT ((0)) NULL,
    [s_Note]       NVARCHAR (500) NULL,
    [s_Creator]    NVARCHAR (500) NULL,
    [s_Editor]     NVARCHAR (500) NULL,
    [dt_Create]    SMALLDATETIME  NULL,
    [dt_Edit]      SMALLDATETIME  NULL,
    [Curr]         NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

