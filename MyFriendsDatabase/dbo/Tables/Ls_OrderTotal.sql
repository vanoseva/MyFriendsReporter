CREATE TABLE [dbo].[Ls_OrderTotal] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_Ls_OrderTotal_s_ID] DEFAULT (newid()) NOT NULL,
    [s_OrderTotal_ID] NCHAR (10)     NULL,
    [dt_DayMonth]     DATETIME       NULL,
    [m_Ordertotal]    MONEY          CONSTRAINT [DF_Ls_OrderTotal_m_Ordertotal] DEFAULT ((0)) NULL,
    [s_Note]          NVARCHAR (500) NULL,
    [s_Creator]       NVARCHAR (50)  NULL,
    [s_Editor]        NVARCHAR (50)  NULL,
    [dt_Create]       SMALLDATETIME  NULL,
    [dt_Edit]         SMALLDATETIME  NULL,
    CONSTRAINT [PK_Ls_OrderTotal] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

