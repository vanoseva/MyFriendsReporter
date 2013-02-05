CREATE TABLE [dbo].[LS_PaymentTerm] (
    [s_ID]         NVARCHAR (50)  CONSTRAINT [DF_LS_PaymentTerm_i_ID] DEFAULT (newid()) NOT NULL,
    [IDKH_s]       NVARCHAR (50)  NOT NULL,
    [s_Name]       NVARCHAR (255) NULL,
    [s_Note]       NVARCHAR (500) NULL,
    [i_DayNum]     INT            NULL,
    [i_PrepaidDay] INT            NULL,
    [f_Discount]   FLOAT (53)     NULL,
    [OrderNo_i]    INT            NULL,
    CONSTRAINT [PK_LS_PaymentTerm_1] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

