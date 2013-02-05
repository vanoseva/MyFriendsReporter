CREATE TABLE [dbo].[SEC_User] (
    [UserGroupID]   SMALLINT      DEFAULT ((1)) NULL,
    [FGroup]        BIT           DEFAULT ((0)) NULL,
    [UserGroupName] NVARCHAR (50) NULL,
    [PWD]           NVARCHAR (50) NULL,
    [Valid]         BIT           NOT NULL,
    [IsAdmin]       BIT           NOT NULL,
    [FuncAdmin]     NVARCHAR (20) NULL,
    [ConfigID]      INT           NULL
);

