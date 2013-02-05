CREATE TABLE [dbo].[tblComputerLogin] (
    [HostName]  NVARCHAR (100) NULL,
    [IPAddress] NVARCHAR (50)  NULL,
    [dt_Login]  SMALLDATETIME  NULL,
    [dt_Out]    SMALLDATETIME  NULL,
    [Valid]     BIT            CONSTRAINT [DF_tblComputerLogin_Valid] DEFAULT ((1)) NULL
);

