CREATE TABLE [dbo].[LS_ProductGroups] (
    [s_ID]              NVARCHAR (50)  CONSTRAINT [DF_LS_ProductGroups_s_ID] DEFAULT (newid()) NOT NULL,
    [s_ProductGroup_ID] NVARCHAR (50)  NULL,
    [s_Name]            NVARCHAR (255) NULL,
    [s_Note]            NVARCHAR (500) NULL,
    [s_BranchID]        NVARCHAR (50)  NULL,
    [i_Ordinal]         NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [f_SaleOff]         FLOAT (53)     NULL,
    [VAT]               FLOAT (53)     NULL,
    [PPV]               FLOAT (53)     NULL,
    [TTDB]              FLOAT (53)     NULL,
    [NK]                FLOAT (53)     NULL,
    [OtherTax]          FLOAT (53)     NULL,
    [isTax]             BIT            NULL,
    [is_Valid]          BIT            DEFAULT ((1)) NULL,
    CONSTRAINT [PK_LS_ProductGroups] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_ProductGroups_LS_BranchProduct] FOREIGN KEY ([s_BranchID]) REFERENCES [dbo].[LS_BranchProduct] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

