CREATE TABLE [dbo].[Ls_Ext] (
    [i_ID]    INT            IDENTITY (1, 1) NOT NULL,
    [iLevel]  INT            NULL,
    [Pers]    FLOAT (53)     NULL,
    [Ordinal] INT            NULL,
    [Note]    NVARCHAR (255) NULL,
    CONSTRAINT [PK_Ls_Ext] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

