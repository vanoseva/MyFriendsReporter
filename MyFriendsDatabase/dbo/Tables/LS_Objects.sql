CREATE TABLE [dbo].[LS_Objects] (
    [s_ID]             NVARCHAR (50)  CONSTRAINT [DF_LS_Objects_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Object_ID]      NVARCHAR (50)  NULL,
    [s_Name]           NVARCHAR (255) NULL,
    [s_Address]        NVARCHAR (500) NULL,
    [s_District_ID]    NVARCHAR (50)  NULL,
    [s_Phone1]         NVARCHAR (50)  NULL,
    [s_Phone2]         NVARCHAR (50)  NULL,
    [s_Fax]            NVARCHAR (50)  NULL,
    [s_Email]          NVARCHAR (100) NULL,
    [s_Website]        NVARCHAR (100) NULL,
    [s_TaxNo]          NVARCHAR (50)  NULL,
    [s_ObjectGroup_ID] NVARCHAR (50)  NULL,
    [s_Employee_ID]    NVARCHAR (50)  NULL,
    [b_Customer]       BIT            CONSTRAINT [DF_LS_Objects_b_Customer] DEFAULT ((0)) NULL,
    [b_Supplier]       BIT            CONSTRAINT [DF_LS_Objects_b_Supplier] DEFAULT ((0)) NULL,
    [m_FirstIncome]    MONEY          CONSTRAINT [DF_LS_Objects_m_FirstIncome] DEFAULT ((0)) NULL,
    [m_FirstOutcome]   MONEY          CONSTRAINT [DF_LS_Objects_m_FirstOutcome] DEFAULT ((0)) NULL,
    [m_CurIncome]      MONEY          CONSTRAINT [DF_LS_Objects_m_CurIncome] DEFAULT ((0)) NULL,
    [m_CurOutcome]     MONEY          CONSTRAINT [DF_LS_Objects_m_CurOutcome] DEFAULT ((0)) NULL,
    [m_PrepayCus]      MONEY          CONSTRAINT [DF_LS_Objects_m_PrepayCus] DEFAULT ((0)) NULL,
    [m_PrepaySup]      MONEY          CONSTRAINT [DF_LS_Objects_m_PrepaySup] DEFAULT ((0)) NULL,
    [s_Note]           NVARCHAR (500) NULL,
    [i_Ordinal]        NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [b_valid]          BIT            CONSTRAINT [DF_LS_Objects_b_valid] DEFAULT ((1)) NULL,
    [s_Currency]       NVARCHAR (50)  NULL,
    [i_Payment]        INT            NULL,
    [s_PaymentTerm]    NVARCHAR (50)  NULL,
    [m_DebtLimit]      MONEY          NULL,
    [f_Discount]       FLOAT (53)     NULL,
    [s_PriceLevel_ID]  NVARCHAR (50)  NULL,
    [s_UserCreate]     NVARCHAR (50)  NULL,
    [dt_Create]        SMALLDATETIME  NULL,
    [s_UserEdit]       NVARCHAR (50)  NULL,
    [dt_LastUpdate]    SMALLDATETIME  NULL,
    [Passport]         NVARCHAR (50)  NULL,
    [dtCreatePassport] SMALLDATETIME  NULL,
    [dtBirthday]       SMALLDATETIME  NULL,
    [Posion]           NVARCHAR (50)  NULL,
    [Male]             INT            CONSTRAINT [DF_LS_Objects_Male] DEFAULT ((0)) NULL,
    [Visa]             NVARCHAR (50)  NULL,
    [dtVisa]           SMALLDATETIME  NULL,
    [dtFrom]           SMALLDATETIME  NULL,
    [timeFrom]         SMALLDATETIME  NULL,
    [dtTo]             SMALLDATETIME  NULL,
    [timeTo]           SMALLDATETIME  NULL,
    [Company]          NVARCHAR (255) NULL,
    [AddressCompany]   NVARCHAR (255) NULL,
    [Nation_ID]        NVARCHAR (50)  NULL,
    [Mark_ID]          INT            NULL,
    [BorderGate_ID]    INT            NULL,
    [TravelPermit]     NVARCHAR (255) NULL,
    [theodoi]          BIT            CONSTRAINT [DF_LS_Objects_theodoi] DEFAULT ((0)) NULL,
    [Room_ID]          NVARCHAR (50)  NULL,
    [m_Price]          MONEY          CONSTRAINT [DF_LS_Objects_m_Price] DEFAULT ((0)) NULL,
    [Curr]             NVARCHAR (50)  NULL,
    [isPartner]        BIT            NULL,
    [nType]            INT            DEFAULT ((0)) NULL,
    [PersonType]       INT            DEFAULT ((0)) NULL,
    [AccountNo]        NVARCHAR (50)  NULL,
    [CardNo]           NVARCHAR (50)  NULL,
    [DateOffer]        DATETIME       NULL,
    CONSTRAINT [PK_LS_Objects] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Objects_Ls_BorderGate] FOREIGN KEY ([BorderGate_ID]) REFERENCES [dbo].[Ls_BorderGate] ([i_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_Objects_LS_Employees] FOREIGN KEY ([s_Employee_ID]) REFERENCES [dbo].[LS_Employees] ([s_ID]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_Objects_Ls_Mark] FOREIGN KEY ([Mark_ID]) REFERENCES [dbo].[Ls_Mark] ([i_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_Objects_LS_Nationalities] FOREIGN KEY ([Nation_ID]) REFERENCES [dbo].[LS_Nationalities] ([s_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_Objects_LS_ObjectGroups] FOREIGN KEY ([s_ObjectGroup_ID]) REFERENCES [dbo].[LS_ObjectGroups] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Website của đối tượng', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N's_Website';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Đơn vị tiền tệ,lấy s_ID từ LS_Currency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N's_Currency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Phương thức thanh toán: 0 - tiền mặt; 1 - chuyển khoản ; 2 - sec', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N'i_Payment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Kì hạn thanh toan,lấy s_ID từ LS_PaymentTerm', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N's_PaymentTerm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Giới hạn công nợ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N'm_DebtLimit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'% hoa hồng tham khảo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N'f_Discount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lấy s_ID từ LS_PriceLevel', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N's_PriceLevel_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Gia phong', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N'm_Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'donvi cua gia phong', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LS_Objects', @level2type = N'COLUMN', @level2name = N'Curr';

