CREATE TABLE [dbo].[HisExt] (
    [EventID] NVARCHAR (50)  CONSTRAINT [DF_HisExt_EvenID] DEFAULT (newid()) NOT NULL,
    [i_ID]    INT            NULL,
    [iLevel]  INT            NULL,
    [Pers]    FLOAT (53)     NULL,
    [Ordinal] INT            NULL,
    [Note]    NVARCHAR (255) NULL,
    CONSTRAINT [PK_HisExt] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

