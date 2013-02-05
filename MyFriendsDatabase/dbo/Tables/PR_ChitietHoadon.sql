CREATE TABLE [dbo].[PR_ChitietHoadon] (
    [s_ID]         NVARCHAR (50)  NOT NULL,
    [MaHD]         NVARCHAR (50)  NULL,
    [Product_ID]   NVARCHAR (50)  NULL,
    [Product_Name] NVARCHAR (255) NULL,
    [Unit]         NVARCHAR (50)  NULL,
    [Qty]          FLOAT (53)     NULL,
    [Price]        MONEY          NULL,
    [Discount]     FLOAT (53)     NULL,
    [STT]          INT            NULL,
    [Note]         NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_ChitietHoadon_Ls_DanhsachHD] FOREIGN KEY ([MaHD]) REFERENCES [dbo].[Ls_DanhsachHD] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

