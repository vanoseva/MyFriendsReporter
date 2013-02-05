CREATE TABLE [dbo].[LS_Contacts] (
    [s_ID]             NVARCHAR (50)  CONSTRAINT [DF_LS_Contacts_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Contact_ID]     NVARCHAR (50)  NULL,
    [s_Name]           NVARCHAR (255) NULL,
    [i_Position_ID]    NUMERIC (18)   NULL,
    [i_Department_ID]  NUMERIC (18)   NULL,
    [i_ContactType_ID] NUMERIC (18)   NULL,
    [s_Address]        NVARCHAR (500) NULL,
    [s_DistrictID]     NVARCHAR (50)  NULL,
    [s_Phone1]         NVARCHAR (50)  NULL,
    [s_Phone2]         NVARCHAR (50)  NULL,
    [s_Fax]            NVARCHAR (50)  NULL,
    [s_Email]          NVARCHAR (100) NULL,
    [s_Note]           NVARCHAR (500) NULL,
    [i_Ordinal]        NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_LS_Contacts] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Contacts_LS_ContactType] FOREIGN KEY ([i_ContactType_ID]) REFERENCES [dbo].[LS_ContactType] ([i_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_Contacts_LS_Department] FOREIGN KEY ([i_Department_ID]) REFERENCES [dbo].[LS_Department] ([i_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_Contacts_LS_Position] FOREIGN KEY ([i_Position_ID]) REFERENCES [dbo].[LS_Position] ([i_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

