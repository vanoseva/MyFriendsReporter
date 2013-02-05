CREATE TABLE [dbo].[rptProduct_Order_ImportDetail] (
    [ID]             NVARCHAR (50) NULL,
    [Product_ID]     NVARCHAR (50) NULL,
    [Qty]            FLOAT (53)    NULL,
    [PriceOrder]     MONEY         NULL,
    [PriceImport]    MONEY         NULL,
    [ImportDetailID] NVARCHAR (50) NULL,
    [Manghiepvu]     NVARCHAR (50) NULL
);

