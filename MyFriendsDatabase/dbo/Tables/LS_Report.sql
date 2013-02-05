CREATE TABLE [dbo].[LS_Report] (
    [ID]         INT            NULL,
    [FormName]   NVARCHAR (255) NULL,
    [Name]       NVARCHAR (255) NULL,
    [PathFile]   NVARCHAR (255) NULL,
    [IDSort]     NUMERIC (18)   NULL,
    [Valid]      BIT            CONSTRAINT [DF__abc__Valid__31C31B4B] DEFAULT ((1)) NULL,
    [NameEng]    NVARCHAR (50)  NULL,
    [FunctionID] INT            NULL
);

