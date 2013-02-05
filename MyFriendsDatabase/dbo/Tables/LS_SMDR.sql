CREATE TABLE [dbo].[LS_SMDR] (
    [ID]           INT            NULL,
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
    [InOut]        BIT            NOT NULL,
    [loaidv]       TINYINT        NULL,
    [Makhuvuc]     NVARCHAR (50)  NULL,
    [trueDuration] INT            NULL,
    [Dongia]       MONEY          NULL,
    [total]        MONEY          NULL,
    [ten]          NVARCHAR (50)  NULL,
    [tenphong]     NVARCHAR (50)  NULL,
    [tentochuc]    NVARCHAR (150) NULL,
    [ConfigID]     INT            NULL
);

