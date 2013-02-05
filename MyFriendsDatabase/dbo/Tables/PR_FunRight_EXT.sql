CREATE TABLE [dbo].[PR_FunRight_EXT] (
    [UID]    NVARCHAR (50) NULL,
    [FuncID] NVARCHAR (50) NULL,
    [R]      BIT           DEFAULT ((0)) NULL,
    [U]      BIT           DEFAULT ((0)) NULL,
    [A]      BIT           DEFAULT ((0)) NULL,
    [D]      BIT           DEFAULT ((0)) NULL,
    [IDSort] NUMERIC (18)  IDENTITY (1, 1) NOT NULL
);

