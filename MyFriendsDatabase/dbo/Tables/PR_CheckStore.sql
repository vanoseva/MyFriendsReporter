CREATE TABLE [dbo].[PR_CheckStore] (
    [s_ID]         NVARCHAR (50)   CONSTRAINT [DF_PR_CheckStore_s_ID] DEFAULT (newid()) NULL,
    [s_IDCheck]    NVARCHAR (50)   NULL,
    [s_Product_ID] NVARCHAR (50)   NULL,
    [f_Qty]        FLOAT (53)      NULL,
    [s_Unit]       NVARCHAR (50)   NULL,
    [i_IDSort]     NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Note]       NVARCHAR (1024) NULL,
    [f_CurInstock] FLOAT (53)      NULL,
    CONSTRAINT [FK_PR_CheckStore_LS_CheckStore] FOREIGN KEY ([s_IDCheck]) REFERENCES [dbo].[LS_CheckStore] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_CheckStore_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

