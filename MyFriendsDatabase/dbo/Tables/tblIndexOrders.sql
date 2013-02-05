CREATE TABLE [dbo].[tblIndexOrders] (
    [i_ID]        NUMERIC (18)  IDENTITY (1, 1) NOT NULL,
    [s_Ind]       NVARCHAR (50) NULL,
    [dt_fromDate] SMALLDATETIME NULL,
    [dt_toDate]   SMALLDATETIME NULL,
    CONSTRAINT [PK_tblIndexOrders] PRIMARY KEY CLUSTERED ([i_ID] ASC)
);


GO
Create trigger [tg_InsIndexOrder] on [dbo].[tblIndexOrders]
for insert,delete
as 
	exec RepairViewOrder