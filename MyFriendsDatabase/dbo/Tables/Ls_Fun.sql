CREATE TABLE [dbo].[Ls_Fun] (
    [i_ID]      NUMERIC (18)   NOT NULL,
    [s_Name]    NVARCHAR (250) NULL,
    [i_Uplevel] NUMERIC (18)   NULL,
    [b_valid]   BIT            NULL,
    [s_Note]    NVARCHAR (500) NULL,
    [NameEng]   NVARCHAR (50)  NULL,
    [IsRep]     BIT            DEFAULT ((1)) NULL,
    [IsRes]     BIT            DEFAULT ((1)) NULL,
    [isStore]   BIT            DEFAULT ((1)) NULL,
    [isTEL]     BIT            NULL,
    CONSTRAINT [PK_Ls_Fun] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

