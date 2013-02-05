CREATE TABLE [dbo].[LS_Nationalities] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF_LS_Nationalities_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Nation_ID] NVARCHAR (50)  NULL,
    [s_Name]      NVARCHAR (255) NULL,
    [s_SName]     NVARCHAR (100) NULL,
    [s_Note]      NVARCHAR (500) NULL,
    [i_Ordinal]   NUMERIC (18)   NOT NULL,
    CONSTRAINT [PK_LS_Nationalities] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

