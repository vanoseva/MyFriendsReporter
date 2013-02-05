CREATE TABLE [dbo].[LS_USER] (
    [s_UID]         NVARCHAR (50)  NOT NULL,
    [b_Valid]       BIT            CONSTRAINT [DF_LS_USER_b_Valid] DEFAULT ((1)) NULL,
    [dt_CreateDate] SMALLDATETIME  NULL,
    [s_PWD]         NVARCHAR (255) NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [i_IDSort]      NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [b_isAdmin]     BIT            CONSTRAINT [DF_LS_USER_b_isAdmin] DEFAULT ((0)) NULL,
    [s_Group_ID]    NVARCHAR (50)  NULL,
    [s_Employee_ID] NVARCHAR (50)  NULL,
    [Cashier_ID]    NVARCHAR (50)  NULL,
    [IsRep]         BIT            DEFAULT ((1)) NULL,
    [IsRes]         BIT            DEFAULT ((1)) NULL,
    [isStore]       BIT            DEFAULT ((1)) NULL,
    [isTEL]         BIT            NULL,
    [CardId]        NVARCHAR (50)  NULL,
    CONSTRAINT [PK_LS_USER] PRIMARY KEY CLUSTERED ([s_UID] ASC),
    CONSTRAINT [FK_LS_USER_LS_Employees] FOREIGN KEY ([s_Employee_ID]) REFERENCES [dbo].[LS_Employees] ([s_ID]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_LS_USER_Ls_GroupUser] FOREIGN KEY ([s_Group_ID]) REFERENCES [dbo].[Ls_GroupUser] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

