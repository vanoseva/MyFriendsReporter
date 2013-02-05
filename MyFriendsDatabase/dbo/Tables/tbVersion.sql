CREATE TABLE [dbo].[tbVersion] (
    [ID]       INT            IDENTITY (1, 1) NOT NULL,
    [dtUpdate] SMALLDATETIME  DEFAULT (getdate()) NULL,
    [lByte]    INT            NULL,
    [Note]     NVARCHAR (255) NULL
);

