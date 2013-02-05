CREATE TABLE [dbo].[Ls_TypeEvents] (
    [i_ID]    INT             NOT NULL,
    [s_Name]  NVARCHAR (250)  NULL,
    [s_Note]  NVARCHAR (1050) NULL,
    [NameEng] NVARCHAR (50)   NULL,
    CONSTRAINT [PK_Ls_TypeEvents] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

