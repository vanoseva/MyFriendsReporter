CREATE TABLE [dbo].[PR_Object_Contact] (
    [s_ID]         NVARCHAR (50) CONSTRAINT [DF_PR_Object_Contact_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Object_ID]  NVARCHAR (50) NULL,
    [s_Contact_ID] NVARCHAR (50) NULL,
    [s_Note]       NVARCHAR (50) NULL,
    [i_Ordinal]    NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_PR_Object_Contact] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Object_Contact_LS_Contacts] FOREIGN KEY ([s_Contact_ID]) REFERENCES [dbo].[LS_Contacts] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_Object_Contact_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

