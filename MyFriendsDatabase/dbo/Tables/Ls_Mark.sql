CREATE TABLE [dbo].[Ls_Mark] (
    [i_ID]    INT            IDENTITY (1, 1) NOT NULL,
    [s_Name]  NVARCHAR (255) NULL,
    [Note]    NVARCHAR (255) NULL,
    [Ordinal] INT            NULL,
    [ID]      NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_Mark] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

