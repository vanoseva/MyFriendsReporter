CREATE TABLE [dbo].[HisPR_ResOrderDetail] (
    [s_ID]       NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [Order_ID]   NVARCHAR (50) NULL,
    [Service_ID] NVARCHAR (50) NULL,
    [Qty]        FLOAT (53)    NULL,
    [Price]      MONEY         NULL,
    [Curr]       NVARCHAR (50) NULL,
    [IDSort]     NUMERIC (18)  NULL,
    [Sub_Total]  MONEY         NULL
);

