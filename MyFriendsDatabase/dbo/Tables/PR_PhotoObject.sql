CREATE TABLE [dbo].[PR_PhotoObject] (
    [s_ID]        NVARCHAR (50)   CONSTRAINT [DF_PR_PhotoObject_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Object_ID] NVARCHAR (50)   NULL,
    [im_Photo]    IMAGE           NULL,
    [im_Photo2]   IMAGE           NULL,
    [im_Photo3]   IMAGE           NULL,
    [i_IDsort]    NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [s_Note]      NVARCHAR (1024) NULL,
    CONSTRAINT [PK_PR_PhotoObject] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_PhotoObject_His_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[HisObjects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PR_PhotoObject_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

