CREATE TABLE [dbo].[Ls_PaymentResDebt] (
    [i_ID]    INT            NOT NULL,
    [Name]    NVARCHAR (50)  NULL,
    [Note]    NVARCHAR (255) NULL,
    [Valid]   BIT            CONSTRAINT [DF_Ls_PaymentResDebt_Valid] DEFAULT ((1)) NULL,
    [NameEng] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_PaymentResDebt] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

