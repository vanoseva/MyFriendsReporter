CREATE TABLE [dbo].[PR_FunRight] (
    [UID]    NVARCHAR (50) NULL,
    [FuncID] NUMERIC (18)  NULL,
    [R]      BIT           CONSTRAINT [DF_PR_FunRight_R] DEFAULT ((0)) NULL,
    [U]      BIT           CONSTRAINT [DF_PR_FunRight_U] DEFAULT ((0)) NULL,
    [A]      BIT           CONSTRAINT [DF_PR_FunRight_A] DEFAULT ((0)) NULL,
    [D]      BIT           CONSTRAINT [DF_PR_FunRight_D] DEFAULT ((0)) NULL,
    [IDSort] NUMERIC (18)  IDENTITY (1, 1) NOT NULL
);

