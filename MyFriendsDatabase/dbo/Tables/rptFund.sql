CREATE TABLE [dbo].[rptFund] (
    [ID]           NVARCHAR (50)  NULL,
    [dayMonth]     SMALLDATETIME  NULL,
    [NumberID]     NVARCHAR (50)  NULL,
    [Note]         NVARCHAR (255) NULL,
    [s_Currency]   NVARCHAR (50)  NULL,
    [m_Exchange]   MONEY          NULL,
    [Income]       MONEY          NULL,
    [Outcome]      MONEY          NULL,
    [Instock]      MONEY          NULL,
    [STT]          INT            NULL,
    [s_Payer]      NVARCHAR (255) NULL,
    [i_Type]       INT            NULL,
    [s_MethodID]   NVARCHAR (50)  NULL,
    [s_MethodName] NVARCHAR (255) NULL,
    [s_ObjectName] NVARCHAR (255) NULL,
    [sBankName]    NVARCHAR (50)  NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 la chi khac,2 la thu khac,3 là ds phiếu thu cong no,4 la ds phiếu chi cong nợ,5 là ds phiêu chi hoa hong,6 la so chi tiet tai khoan ngan hang,0 la quy tien mat', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rptFund', @level2type = N'COLUMN', @level2name = N'i_Type';

