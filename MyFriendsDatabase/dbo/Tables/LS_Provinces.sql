CREATE TABLE [dbo].[LS_Provinces] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_LS_Provinces_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Province_ID] NVARCHAR (50)  NULL,
    [s_Name]        NVARCHAR (255) NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [i_Ordinal]     NUMERIC (18)   NOT NULL,
    [s_Nation_ID]   NVARCHAR (50)  NULL,
    CONSTRAINT [PK_LS_Provinces] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_Provinces_LS_Nationalities] FOREIGN KEY ([s_Nation_ID]) REFERENCES [dbo].[LS_Nationalities] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

