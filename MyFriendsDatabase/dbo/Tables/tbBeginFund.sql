CREATE TABLE [dbo].[tbBeginFund] (
    [s_ID]    NVARCHAR (50) DEFAULT (newid()) NULL,
    [m_Curr]  MONEY         NULL,
    [s_Curr]  NVARCHAR (50) NULL,
    [s_Edit]  NVARCHAR (50) NULL,
    [dt_Edit] SMALLDATETIME NULL
);

