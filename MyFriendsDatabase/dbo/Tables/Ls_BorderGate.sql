CREATE TABLE [dbo].[Ls_BorderGate] (
    [i_ID]    INT            IDENTITY (1, 1) NOT NULL,
    [s_Name]  NVARCHAR (255) NULL,
    [Note]    NVARCHAR (255) NULL,
    [Ordinal] INT            NULL,
    [ID]      NVARCHAR (50)  NULL,
    [Address] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_BorderGate] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

