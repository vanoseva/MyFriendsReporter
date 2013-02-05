CREATE TABLE [dbo].[Pr_PriceHour_Roomtype] (
    [s_ID]        NVARCHAR (50) CONSTRAINT [DF_Pr_PriceHour_Roomtype_s_ID] DEFAULT (newid()) NOT NULL,
    [Roomtype_ID] NVARCHAR (50) NULL,
    [Orinal]      INT           NULL,
    [Price_VND]   MONEY         NULL,
    [Price_USD]   MONEY         NULL,
    CONSTRAINT [PK_Pr_PriceHour_Roomtype] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_Pr_PriceHour_Roomtype_Ls_RoomType] FOREIGN KEY ([Roomtype_ID]) REFERENCES [dbo].[Ls_RoomType] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

