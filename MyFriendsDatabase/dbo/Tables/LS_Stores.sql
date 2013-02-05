CREATE TABLE [dbo].[LS_Stores] (
    [s_ID]       NVARCHAR (50)  CONSTRAINT [DF_LS_Stores_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Store_ID] NVARCHAR (50)  NULL,
    [s_Name]     NVARCHAR (255) NULL,
    [s_Address]  NVARCHAR (500) NULL,
    [s_Phone]    NVARCHAR (50)  NULL,
    [s_Note]     NVARCHAR (500) NULL,
    [i_Ordinal]  NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_LS_Stores] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

