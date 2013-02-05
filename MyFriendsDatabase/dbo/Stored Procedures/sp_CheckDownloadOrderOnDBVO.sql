Create Procedure sp_CheckDownloadOrderOnDBVO(@OrderID nvarchar(50))
as
if (Select Count(*) as C from tblConfig where isnull(isConnectAccounting,0)=1)=0
Begin
	Select cast(0 as bit) as isDownload
	return
End
if (Select count(*) from master.dbo.sysdatabases where name='DBVO')=0
Begin
	Select cast(0 as bit) as isDownload
	return
End


if (Select count(*)  from [DBVO].[dbo].[VOT2007] where [VoucherNo]=@OrderID and isnull(OmegaKey,'')<>'')=1
	Select cast(1 as bit) as isDownload
else
	Select cast(0 as bit) as isDownload
