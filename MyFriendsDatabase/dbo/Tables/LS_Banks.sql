CREATE TABLE [dbo].[LS_Banks] (
    [s_ID]       NVARCHAR (50)  CONSTRAINT [DF_LS_Banks_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Bank_ID]  NVARCHAR (50)  NULL,
    [s_Name]     NVARCHAR (255) NULL,
    [s_Address]  NVARCHAR (500) NULL,
    [m_Balance]  MONEY          CONSTRAINT [DF_LS_Banks_m_Balance] DEFAULT ((0)) NULL,
    [m_Begin]    MONEY          CONSTRAINT [DF_LS_Banks_m_Begin] DEFAULT ((0)) NULL,
    [i_Currency] NVARCHAR (50)  NULL,
    [s_Note]     NVARCHAR (500) NULL,
    [i_Ordinal]  NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_LS_Banks] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Mã đơn vị tiền tệ, lấy từ i_ID của LS_Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Banks', @level2type = N'COLUMN', @level2name = N'i_Currency';

