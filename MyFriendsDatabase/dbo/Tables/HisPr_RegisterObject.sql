CREATE TABLE [dbo].[HisPr_RegisterObject] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF__HisPr_Registe__s_ID__383A4359] DEFAULT (newid()) NOT NULL,
    [Register_ID] NVARCHAR (50)  NULL,
    [Object_ID]   NVARCHAR (50)  NULL,
    [Descr]       NVARCHAR (255) NULL,
    [BKNote]      NVARCHAR (255) NULL,
    [IDSort]      NUMERIC (18)   NULL,
    CONSTRAINT [PK_HisPr_RegisterObject] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_HisPr_RegisterObject_PR_Register] FOREIGN KEY ([Register_ID]) REFERENCES [dbo].[HisPR_Register] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

