CREATE TABLE [dbo].[Ls_PaymentImport] (
    [i_ID]       NVARCHAR (50)  NOT NULL,
    [IDKH_s]     NVARCHAR (50)  NOT NULL,
    [s_Name]     NVARCHAR (255) NULL,
    [s_Note]     NVARCHAR (500) NULL,
    [OrderNo_i]  INT            NULL,
    [b_Customer] BIT            NULL,
    [b_Supplier] BIT            NULL,
    CONSTRAINT [PK_Ls_PaymentImport] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

