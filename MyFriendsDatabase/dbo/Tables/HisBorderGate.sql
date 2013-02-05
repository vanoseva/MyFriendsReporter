CREATE TABLE [dbo].[HisBorderGate] (
    [i_ID]    INT            NOT NULL,
    [s_Name]  NVARCHAR (255) NULL,
    [Note]    NVARCHAR (255) NULL,
    [EventID] NVARCHAR (50)  NOT NULL,
    [Ordinal] INT            NULL,
    CONSTRAINT [PK_HisBorderGate] PRIMARY KEY CLUSTERED ([EventID] ASC)
);

