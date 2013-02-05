CREATE TABLE [dbo].[Pr_Product_PrintBarBep] (
    [Table_ID]     NVARCHAR (50)  NULL,
    [Table_Name]   NVARCHAR (50)  NULL,
    [Product_ID]   NVARCHAR (50)  NULL,
    [Product_Name] NVARCHAR (100) NULL,
    [OrderTime]    DATETIME       NULL,
    [Qty]          FLOAT (53)     NULL,
    [QtyOld]       FLOAT (53)     NULL,
    [isBar]        BIT            NULL,
    [isBep]        BIT            NULL,
    [Note]         NVARCHAR (500) NULL,
    [isPrint]      BIT            NULL,
    [OrderID]      NVARCHAR (50)  NULL,
    [Unit]         NVARCHAR (50)  NULL,
    [Printer]      NVARCHAR (50)  NULL
);

