CREATE TABLE [dbo].[PR_NoteBorrow] (
    [s_ID]        NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [dayMonth]    SMALLDATETIME  NULL,
    [Register_ID] NVARCHAR (50)  NULL,
    [Note]        NVARCHAR (255) NULL,
    [CheckBorrow] BIT            DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Ls_PR_NoteBorrow_PR_Register] FOREIGN KEY ([Register_ID]) REFERENCES [dbo].[PR_Register] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

