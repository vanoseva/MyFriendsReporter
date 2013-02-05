CREATE TABLE [dbo].[Ls_Import_EndProduct] (
    [s_ID]          NVARCHAR (50) CONSTRAINT [DF_Ls_Import_EndProduct_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Number_ID]   NVARCHAR (50) NULL,
    [dt_DayMonth]   SMALLDATETIME NULL,
    [s_Employee_ID] NVARCHAR (50) NULL,
    [m_Total]       MONEY         NULL,
    [s_Note]        NVARCHAR (50) NULL,
    [i_IDSort]      NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Ls_Import_EndProduct] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

