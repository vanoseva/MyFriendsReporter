CREATE TABLE [dbo].[PR_Employee_Discount] (
    [s_ID]          NVARCHAR (50)  CONSTRAINT [DF_PR_Employee_Discount_s_ID] DEFAULT (newid()) NOT NULL,
    [s_Employee_ID] NVARCHAR (50)  NULL,
    [s_Name]        NVARCHAR (255) NULL,
    [d_FromDate]    SMALLDATETIME  NULL,
    [d_ToDate]      SMALLDATETIME  NULL,
    [s_Note]        NVARCHAR (500) NULL,
    [i_Ordinal]     NUMERIC (18)   IDENTITY (1, 1) NOT NULL,
    [b_Valid]       BIT            CONSTRAINT [DF_PR_Employee_Discount_b_Valid] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_PR_Employee_Discount] PRIMARY KEY CLUSTERED ([s_ID] ASC),
    CONSTRAINT [FK_PR_Employee_Discount_LS_Employees] FOREIGN KEY ([s_Employee_ID]) REFERENCES [dbo].[LS_Employees] ([s_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);

