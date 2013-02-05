CREATE TABLE [dbo].[PR_Package] (
    [s_ID]          NVARCHAR (50)   CONSTRAINT [DF_PR_Package_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Product_ID]  NVARCHAR (50)   NULL,
    [s_package]     NVARCHAR (255)  NULL,
    [i_Width]       FLOAT (53)      NULL,
    [i_Height]      FLOAT (53)      NULL,
    [i_Length]      FLOAT (53)      NULL,
    [i_Netweight]   FLOAT (53)      NULL,
    [i_Grossweight] FLOAT (53)      NULL,
    [s_Note]        NVARCHAR (1024) NULL,
    [i_IDSort]      NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_Package] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Package_LS_Products] FOREIGN KEY ([s_Product_ID]) REFERENCES [dbo].[LS_Products] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

