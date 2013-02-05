CREATE TABLE [dbo].[rptCheckStore] (
    [ID]           NVARCHAR (50)  NULL,
    [Product_Key]  NVARCHAR (50)  NULL,
    [Product_ID]   NVARCHAR (50)  NULL,
    [Product_Name] NVARCHAR (500) NULL,
    [Unit]         NVARCHAR (50)  NULL,
    [Exchange]     FLOAT (53)     CONSTRAINT [DF_rptCheckStore_Exchange] DEFAULT ((0)) NULL,
    [Qty]          FLOAT (53)     CONSTRAINT [DF_rptCheckStore_Qty] DEFAULT ((0)) NULL,
    [Instock]      FLOAT (53)     CONSTRAINT [DF_rptCheckStore_Instock] DEFAULT ((0)) NULL
);

