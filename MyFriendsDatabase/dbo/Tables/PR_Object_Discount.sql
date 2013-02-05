CREATE TABLE [dbo].[PR_Object_Discount] (
    [s_ID]        NVARCHAR (50)  CONSTRAINT [DF_PR_Object_Discount_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Object_ID] NVARCHAR (50)  NULL,
    [s_Name]      NVARCHAR (255) NULL,
    [dt_FromDate] SMALLDATETIME  NULL,
    [dt_ToDate]   SMALLDATETIME  NULL,
    [s_Note]      NVARCHAR (500) NULL,
    [i_Ordinal]   NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [b_Valid]     BIT            CONSTRAINT [DF_PR_Object_Discount_b_Valid] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_PR_Object_Discount] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Object_Discount_LS_Objects] FOREIGN KEY ([s_Object_ID]) REFERENCES [dbo].[LS_Objects] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

