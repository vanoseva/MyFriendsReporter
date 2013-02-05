CREATE TABLE [dbo].[tblConfigProduct] (
    [s_ID]               NVARCHAR (50) DEFAULT (newid()) NOT NULL,
    [i_PriceProPriority] INT           NULL,
    [i_DisProPriority]   INT           NULL,
    [isDiscount]         BIT           NULL,
    [isDisOfPro]         BIT           NULL,
    [fVatDefault]        FLOAT (53)    NULL,
    [fTimeDisSer]        FLOAT (53)    NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

