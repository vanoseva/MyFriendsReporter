CREATE TABLE [dbo].[LS_CheckStore] (
    [s_ID]           NVARCHAR (50)   CONSTRAINT [DF_LS_CheckStore_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Store_ID]     NVARCHAR (50)   NULL,
    [dt_DayMonth]    SMALLDATETIME   NULL,
    [s_Note]         NVARCHAR (1024) NULL,
    [i_IDSort]       NUMERIC (18)    IDENTITY (1, 1) NOT NULL,
    [isEditIncrease] BIT             CONSTRAINT [DF_LS_CheckStore_isEditIncrease] DEFAULT ((0)) NULL,
    [isEditDecrease] BIT             CONSTRAINT [DF_LS_CheckStore_isEditDecrease] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_LS_CheckStore] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_CheckStore_LS_Stores] FOREIGN KEY ([s_Store_ID]) REFERENCES [dbo].[LS_Stores] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

