CREATE TABLE [dbo].[Ls_Restaurant] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_Ls_Restaurant_s_ID] DEFAULT (newid()) NOT NULL,
    [ID]            NVARCHAR (50)  NULL,
    [Name]          NVARCHAR (100) NULL,
    [Ordinal]       INT            NULL,
    [Store_ID]      NVARCHAR (50)  NULL,
    [Note]          NVARCHAR (255) NULL,
    [StoreDrink_ID] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_Restaurant] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

