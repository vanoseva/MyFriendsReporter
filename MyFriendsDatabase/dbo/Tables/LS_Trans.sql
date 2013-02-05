CREATE TABLE [dbo].[LS_Trans] (
    [s_ID]          NVARCHAR (50)   NOT NULL,
    [s_NumberID]    NVARCHAR (50)   NULL,
    [dt_DayMonth]   SMALLDATETIME   NULL,
    [s_StoreSource] NVARCHAR (50)   NULL,
    [s_StoreDes]    NVARCHAR (50)   NULL,
    [m_Total]       MONEY           CONSTRAINT [DF_LS_Trans_m_Total] DEFAULT ((0)) NULL,
    [s_Note]        NVARCHAR (1024) NULL,
    [i_IDSort]      NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Creator]     NVARCHAR (50)   NULL,
    [s_Editor]      NVARCHAR (50)   NULL,
    [dt_Create]     DATETIME        NULL,
    [dt_Edit]       DATETIME        NULL,
    [s_EmpSource]   NVARCHAR (50)   NULL,
    [s_EmpDes]      NVARCHAR (50)   NULL,
    [Curr]          NVARCHAR (50)   NULL,
    [Exchange]      FLOAT (53)      NULL,
    CONSTRAINT [PK_LS_Trans] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

