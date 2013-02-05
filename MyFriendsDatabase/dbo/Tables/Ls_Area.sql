CREATE TABLE [dbo].[Ls_Area] (
    [Area_ID]    NVARCHAR (50)  NOT NULL,
    [Area_Name]  NVARCHAR (100) NULL,
    [Ordinal]    INT            NULL,
    [X]          INT            NULL,
    [Y]          INT            NULL,
    [FontSize]   INT            NULL,
    [AddressSRV] NVARCHAR (50)  NULL,
    [IsCheckIN]  BIT            NULL,
    PRIMARY KEY CLUSTERED ([Area_ID] ASC)
);

