CREATE TABLE [dbo].[Ls_Table] (
    [s_ID]     NVARCHAR (50)  CONSTRAINT [DF_Ls_Table_s_ID] DEFAULT (newid()) NOT NULL,
    [ID]       NVARCHAR (50)  NULL,
    [Name]     NVARCHAR (100) NULL,
    [Ordinal]  INT            NULL,
    [Note]     NVARCHAR (255) NULL,
    [X]        INT            NULL,
    [Y]        INT            NULL,
    [Area_ID]  NVARCHAR (50)  NULL,
    [Photo]    IMAGE          NULL,
    [isReady]  BIT            DEFAULT ((0)) NULL,
    [isLock]   BIT            NULL,
    [dtTimeIn] SMALLDATETIME  NULL,
    [CPUID]    NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Ls_Table] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_Table_Ls_AreaTable] FOREIGN KEY ([Area_ID]) REFERENCES [dbo].[Ls_AreaTable] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

