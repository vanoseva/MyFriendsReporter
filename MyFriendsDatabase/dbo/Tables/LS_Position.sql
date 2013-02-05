CREATE TABLE [dbo].[LS_Position] (
    [i_ID]   NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [s_Name] NVARCHAR (255) NULL,
    [s_Note] NVARCHAR (500) NULL,
    CONSTRAINT [PK_LS_Position] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

