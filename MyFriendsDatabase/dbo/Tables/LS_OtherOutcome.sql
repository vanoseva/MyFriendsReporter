CREATE TABLE [dbo].[LS_OtherOutcome] (
    [s_ID]      NVARCHAR (50)  CONSTRAINT [DF_LS_OtherOutcome_i_ID] DEFAULT (newid()) NOT NULL,
    [s_IDKH]    NVARCHAR (50)  NULL,
    [s_Name]    NVARCHAR (255) NULL,
    [s_Note]    NVARCHAR (500) NULL,
    [OrderNo_i] INT            NULL,
    [s_Uplevel] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_LS_OtherOutcome_1] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

