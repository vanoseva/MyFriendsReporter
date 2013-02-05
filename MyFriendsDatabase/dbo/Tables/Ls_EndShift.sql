CREATE TABLE [dbo].[Ls_EndShift] (
    [Value]    MONEY       NOT NULL,
    [Type]     NCHAR (100) NOT NULL,
    [Quantity] FLOAT (53)  NOT NULL,
    [Total]    MONEY       NOT NULL,
    CONSTRAINT [PK_Ls_EndShift] PRIMARY KEY CLUSTERED ([Value] ASC)
);

