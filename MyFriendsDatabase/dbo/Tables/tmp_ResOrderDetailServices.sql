﻿CREATE TABLE [dbo].[tmp_ResOrderDetailServices] (
    [s_ID]     NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [IDDetail] NVARCHAR (50)  NULL,
    [Qty]      FLOAT (53)     NULL,
    [Total]    MONEY          NULL,
    [Ordinal]  INT            NULL,
    [s1]       NVARCHAR (50)  NULL,
    [s2]       NVARCHAR (50)  NULL,
    [v1]       FLOAT (53)     NULL,
    [v2]       FLOAT (53)     NULL,
    [Note]     NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_tmp_ResOrderDetailServices_tmpResOrderDetail] FOREIGN KEY ([IDDetail]) REFERENCES [dbo].[tmpResOrderDetail] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

