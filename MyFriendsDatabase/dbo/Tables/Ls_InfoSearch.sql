CREATE TABLE [dbo].[Ls_InfoSearch] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF_Ls_InfoSearch_s_ID] DEFAULT (newid()) NULL,
    [dt_dayMonth] SMALLDATETIME  CONSTRAINT [DF_Ls_InfoSearch_dt_dayMonth] DEFAULT (getdate()) NULL,
    [s_Note]      NVARCHAR (255) NULL,
    [im_Content]  IMAGE          NULL,
    [ext]         NVARCHAR (50)  NULL
);

