CREATE TABLE [dbo].[Pr_RegisterObject] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF__Pr_Registe__s_ID__383A4359] DEFAULT (newid()) NOT NULL,
    [Register_ID] NVARCHAR (50)  NOT NULL,
    [Object_ID]   NVARCHAR (50)  NOT NULL,
    [Descr]       NVARCHAR (255) NULL,
    [BKNote]      NVARCHAR (255) NULL,
    [IDSort]      NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [fromDate]    SMALLDATETIME  NULL,
    [toDate]      SMALLDATETIME  NULL,
    CONSTRAINT [PK_Pr_RegisterObject] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_RegisterObject_LS_Objects] FOREIGN KEY ([Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Pr_RegisterObject_PR_Register] FOREIGN KEY ([Register_ID]) REFERENCES [dbo].[PR_Register] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

