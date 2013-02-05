CREATE TABLE [dbo].[tbConfigTouchButton] (
    [i_ID]   INT            NOT NULL,
    [W]      INT            NULL,
    [H]      INT            NULL,
    [LayOut] INT            NULL,
    [A]      INT            NULL,
    [R]      INT            NULL,
    [G]      INT            NULL,
    [B]      INT            NULL,
    [s1]     NVARCHAR (255) NULL,
    [s2]     NVARCHAR (255) NULL,
    [s3]     NVARCHAR (255) NULL,
    [b1]     BIT            NULL,
    [b2]     BIT            NULL,
    [b3]     BIT            NULL,
    [v1]     FLOAT (53)     NULL,
    [v2]     FLOAT (53)     NULL,
    [v3]     FLOAT (53)     NULL,
    [d1]     SMALLDATETIME  NULL,
    [d2]     SMALLDATETIME  NULL,
    [d3]     SMALLDATETIME  NULL,
    CONSTRAINT [PK_tbConfigTouchButton] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);

