CREATE TABLE [dbo].[LS_OtherIncome] (
    [i_ID]      NVARCHAR (50)  NOT NULL,
    [IDKH]      NVARCHAR (50)  NOT NULL,
    [s_Name]    NVARCHAR (255) NULL,
    [s_Note]    NVARCHAR (500) NULL,
    [OrderNo_i] INT            NULL,
    [s_Uplevel] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_LS_OtherIncome] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

