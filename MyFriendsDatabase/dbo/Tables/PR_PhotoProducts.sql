CREATE TABLE [dbo].[PR_PhotoProducts] (
    [s_ID]         NVARCHAR (50)   CONSTRAINT [DF_PR_PhotoProducts_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Product_ID] NVARCHAR (50)   NULL,
    [im_Photo]     IMAGE           NULL,
    [im_Photo2]    IMAGE           NULL,
    [im_Photo3]    IMAGE           NULL,
    [i_IDsort]     NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Note]       NVARCHAR (1024) NULL,
    CONSTRAINT [PK_PR_PhotoProducts] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_PhotoProducts_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

