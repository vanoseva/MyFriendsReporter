CREATE TABLE [dbo].[Pr_CheckIn] (
    [CheckINID]    INT           NOT NULL,
    [CustomerName] NVARCHAR (50) NULL,
    [Maphong]      NVARCHAR (50) NULL,
    [Sonoibo]      INT           NULL,
    [NgayIN]       SMALLDATETIME NULL,
    [GioIN]        SMALLDATETIME NULL,
    [NgayOut]      SMALLDATETIME NULL,
    [GioOut]       SMALLDATETIME NULL,
    [trangthai]    BIT           NOT NULL,
    [Total]        MONEY         NULL,
    [Duration]     INT           NULL
);

