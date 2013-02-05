CREATE TABLE [dbo].[rptTotalOrderProduct] (
    [ID]          NVARCHAR (50) NULL,
    [Object_ID]   NVARCHAR (50) NULL,
    [Product_ID]  NVARCHAR (50) NULL,
    [Qty]         FLOAT (53)    NULL,
    [QtyReturn]   FLOAT (53)    NULL,
    [Unit]        NVARCHAR (50) NULL,
    [TotalOrder]  MONEY         NULL,
    [m_Discount]  MONEY         NULL,
    [m_Return]    MONEY         NULL,
    [Total]       MONEY         NULL,
    [TotalImport] MONEY         NULL,
    [m_Balance]   MONEY         NULL,
    [f_Per]       FLOAT (53)    NULL,
    [s_ID]        NVARCHAR (50) CONSTRAINT [DF_rptTotalOrderProduct_s_ID] DEFAULT (newid()) NULL
);

