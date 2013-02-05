CREATE TABLE [dbo].[Pr_RegisterPrice] (
    [s_ID]        NVARCHAR (50) CONSTRAINT [DF__Pr_Registe__s_ID__3651FAE7] DEFAULT (newid()) NOT NULL,
    [Register_ID] NVARCHAR (50) NOT NULL,
    [Price]       MONEY         NULL,
    [Price_Extra] MONEY         NULL,
    [From_date]   SMALLDATETIME NULL,
    [To_date]     SMALLDATETIME NULL,
    CONSTRAINT [PK_Pr_RegisterPrice] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_RegisterPrice_PR_Register] FOREIGN KEY ([Register_ID]) REFERENCES [dbo].[PR_Register] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

