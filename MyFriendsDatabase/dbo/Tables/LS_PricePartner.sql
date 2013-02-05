CREATE TABLE [dbo].[LS_PricePartner] (
    [s_ID]       NVARCHAR (50)  DEFAULT (newid()) NOT NULL,
    [i_ID]       INT            NULL,
    [dayMonth]   SMALLDATETIME  NULL,
    [fromDate]   SMALLDATETIME  NULL,
    [toDate]     SMALLDATETIME  NULL,
    [Partner_ID] NVARCHAR (50)  NULL,
    [Note]       NVARCHAR (255) DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_LS_PricePartner_Ls_Partner] FOREIGN KEY ([Partner_ID]) REFERENCES [dbo].[Ls_Partner] ([s_ID]) ON UPDATE CASCADE
);

