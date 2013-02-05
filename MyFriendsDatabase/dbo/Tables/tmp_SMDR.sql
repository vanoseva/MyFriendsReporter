CREATE TABLE [dbo].[tmp_SMDR] (
    [ID]           NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [Ngaygoi]      SMALLDATETIME  NULL,
    [Giogoi]       NVARCHAR (50)  NULL,
    [Sonoibo]      INT            NULL,
    [Line]         SMALLINT       NULL,
    [Sogoidi]      NVARCHAR (50)  NULL,
    [Thoiluong]    NVARCHAR (50)  NULL,
    [Mavung]       NVARCHAR (50)  NULL,
    [Desrc]        NVARCHAR (100) NULL,
    [truetime]     SMALLDATETIME  NULL,
    [duration]     SMALLINT       NULL,
    [InOut]        BIT            DEFAULT ((0)) NULL,
    [Dongia]       MONEY          NULL,
    [TrueDuration] INT            NULL,
    [Makhuvuc]     NVARCHAR (50)  NULL,
    [Total]        MONEY          NULL,
    [Sodanhba]     NVARCHAR (50)  NULL
);

