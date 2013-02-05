CREATE TABLE [dbo].[LS_Products] (
    [s_ID]                NVARCHAR (50)  CONSTRAINT [DF_LS_Products_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Product_ID]        NVARCHAR (50)  NULL,
    [s_Name]              NVARCHAR (255) NULL,
    [s_SName]             NVARCHAR (100) NULL,
    [s_Unit]              NVARCHAR (50)  NULL,
    [m_UnitPurchase]      MONEY          CONSTRAINT [DF_LS_Products_m_UnitBegin] DEFAULT ((0)) NULL,
    [m_UnitPrice]         MONEY          CONSTRAINT [DF_LS_Products_m_UnitPrice] DEFAULT ((0)) NULL,
    [f_UnitPrice]         FLOAT (53)     NULL,
    [s_Specification]     NVARCHAR (100) NULL,
    [s_Quantification]    NVARCHAR (100) NULL,
    [s_Color]             NVARCHAR (100) NULL,
    [f_MinInstock]        FLOAT (53)     CONSTRAINT [DF_LS_Products_f_MinInstock] DEFAULT ((0)) NULL,
    [f_MaxInstock]        FLOAT (53)     CONSTRAINT [DF_LS_Products_f_MaxInstock] DEFAULT ((0)) NULL,
    [s_Note]              NVARCHAR (500) NULL,
    [i_Ordinal]           NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [s_ProductGroupID]    NVARCHAR (50)  NULL,
    [i_nOrverDate]        INT            CONSTRAINT [DF_LS_Products_i_nOrverDate] DEFAULT ((0)) NULL,
    [b_IsMaterial]        BIT            CONSTRAINT [DF_LS_Products_bIsMaterial] DEFAULT ((0)) NULL,
    [b_IsEndProduct]      BIT            CONSTRAINT [DF_LS_Products_bIsEndProduct] DEFAULT ((0)) NULL,
    [b_IsService]         BIT            CONSTRAINT [DF_LS_Products_bIsService] DEFAULT ((0)) NULL,
    [f_taxImport]         FLOAT (53)     NULL,
    [f_taxExcise]         FLOAT (53)     CONSTRAINT [DF_LS_Products_f_taxExcise] DEFAULT ((0)) NULL,
    [f_taxVAT]            FLOAT (53)     CONSTRAINT [DF_LS_Products_f_taxVAT] DEFAULT ((0)) NULL,
    [b_isTax]             BIT            CONSTRAINT [DF_LS_Products_b_isTax] DEFAULT ((1)) NULL,
    [s_NoteImport]        NVARCHAR (500) NULL,
    [s_NoteOrder]         NVARCHAR (500) NULL,
    [b_Visible]           BIT            CONSTRAINT [DF_LS_Products_b_Visible] DEFAULT ((1)) NULL,
    [f_TemplNum]          FLOAT (53)     CONSTRAINT [DF_LS_Products_f_TemplNum] DEFAULT ((0)) NULL,
    [f_NumEndPro]         FLOAT (53)     NULL,
    [s_Object_ID]         NVARCHAR (50)  NULL,
    [b_Stock]             BIT            NULL,
    [s_UserCreate]        NVARCHAR (50)  NULL,
    [dt_Create]           SMALLDATETIME  NULL,
    [s_UserEdit]          NVARCHAR (50)  NULL,
    [dt_LastUpdate]       SMALLDATETIME  NULL,
    [f_Discount]          FLOAT (53)     CONSTRAINT [DF_LS_Products_f_Discount] DEFAULT ((0)) NULL,
    [b_PrintKitchen]      BIT            NULL,
    [b_PrintBar]          BIT            NULL,
    [b_NoTrackSer]        BIT            NULL,
    [b_Menu]              BIT            NULL,
    [isDoneSend]          BIT            DEFAULT ((0)) NULL,
    [m_PricePurchase_USD] MONEY          NULL,
    [m_Price_USD]         MONEY          NULL,
    [isFood]              BIT            NULL,
    [isDrink]             BIT            NULL,
    [b_SetMenu]           BIT            NULL,
    CONSTRAINT [PK_LS_Products] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Products_LS_ProductGroups1] FOREIGN KEY ([s_ProductGroupID]) REFERENCES [dbo].[LS_ProductGroups] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% so với giá mua', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Products', @level2type = N'COLUMN', @level2name = N'f_UnitPrice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lay s_ID từ Ls_Objects', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Products', @level2type = N'COLUMN', @level2name = N's_Object_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'=1 là có Theo dõi hàng tồn,=0 là ko theo dõi hàng tồn', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Products', @level2type = N'COLUMN', @level2name = N'b_Stock';

