CREATE Procedure sp_DelInvOnDBVO(@OrderID nvarchar(50))
as
	if (Select Count(*) as C from tblConfig where isnull(isConnectAccounting,0)=1)=0
		return

	if (Select count(*) from master.dbo.sysdatabases where name='DBVO')=0
		return

	
	Delete from [DBVO].[dbo].[VOT2009] where 
	[NumberID] IN (Select NumberID from [DBVO].[dbo].[VOT2008] where [InvoiceNo]=@OrderID)

	Delete from [DBVO].[dbo].[VOT2010] where 
	[NumberID] IN (Select OriginNumber from [DBVO].[dbo].[VOT2008] where [InvoiceNo]=@OrderID)

	Delete from [DBVO].[dbo].[VOT2008] where [InvoiceNo]=@OrderID