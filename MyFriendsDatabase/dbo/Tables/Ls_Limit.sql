CREATE TABLE [dbo].[Ls_Limit] (
    [s_ID]     NVARCHAR (50)  CONSTRAINT [DF_Ls_Limit_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Code]   NVARCHAR (50)  NULL,
    [s_Name]   NVARCHAR (50)  NULL,
    [m_Value]  MONEY          NULL,
    [s_Note]   NVARCHAR (500) NULL,
    [i_IDSort] INT            NULL,
    [s1]       NVARCHAR (50)  NULL,
    [s2]       NVARCHAR (50)  NULL,
    [d1]       DATETIME       NULL,
    [d2]       DATETIME       NULL,
    [f1]       FLOAT (53)     NULL,
    [f2]       FLOAT (53)     NULL,
    CONSTRAINT [PK_Ls_Limit] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

