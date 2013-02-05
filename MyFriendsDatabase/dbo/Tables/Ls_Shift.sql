CREATE TABLE [dbo].[Ls_Shift] (
    [s_ID]        NVARCHAR (50) CONSTRAINT [DF__Ls_Shift__s_ID__1920BF5C] DEFAULT (newid()) NOT NULL,
    [s_Name]      NVARCHAR (50) NULL,
    [b_Valid]     BIT           CONSTRAINT [DF__Ls_Shift__b_Vali__1A14E395] DEFAULT ((1)) NULL,
    [dt_fromTime] SMALLDATETIME NULL,
    [dt_toTime]   SMALLDATETIME NULL,
    CONSTRAINT [PK_Ls_Shift] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

