CREATE TABLE [dbo].[tmpProductInstock] (
    [ID]         NVARCHAR (50) NULL,
    [Product_ID] NVARCHAR (50) NULL,
    [Store_ID]   NVARCHAR (50) NULL,
    [DayMonth]   SMALLDATETIME NULL,
    [Price]      MONEY         NULL,
    [QBegin]     FLOAT (53)    NULL,
    [QInstock]   FLOAT (53)    NULL,
    [MaNghiepvu] NVARCHAR (50) NULL
);

