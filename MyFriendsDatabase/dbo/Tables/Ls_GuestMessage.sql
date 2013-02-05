CREATE TABLE [dbo].[Ls_GuestMessage] (
    [s_ID]            NVARCHAR (50)  CONSTRAINT [DF_Ls_GuestMessage_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Object_ID]     NVARCHAR (50)  NULL,
    [Room_ID]         NVARCHAR (50)  NULL,
    [dt_DateTime]     SMALLDATETIME  NULL,
    [s_From]          NVARCHAR (50)  NULL,
    [s_Company]       NVARCHAR (500) NULL,
    [s_Phone]         NVARCHAR (50)  NULL,
    [s_Mesage]        NVARCHAR (500) NULL,
    [b_Telephoned]    BIT            NULL,
    [b_ReturnedYour]  BIT            NULL,
    [b_PleaseCall]    BIT            NULL,
    [b_WillCallAgain] BIT            NULL,
    [b_CameToSeeYou]  BIT            NULL,
    [b_WantToSeeYou]  BIT            NULL,
    [b_Rush]          BIT            NULL,
    [b_Special]       BIT            NULL,
    [b_isDeliver]     BIT            NULL,
    CONSTRAINT [PK_Ls_GuestMessage] PRIMARY KEY CLUSTERED ([s_ID] ASC)
);

