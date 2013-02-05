Create Procedure [dbo].[sp_DeleteTableOrders]
as
	Declare @sql nvarchar(4000),@s_Ind nvarchar(10)
	Declare Cur cursor for 
		Select s_Ind from tblIndexorders
	Open Cur
	Fetch next from Cur into @s_Ind
	while @@Fetch_status=0
	Begin
		set @sql='Drop table [PR_OrderDetail_Fix_' + ltrim(rtrim(@s_Ind)) +']'
		exec sp_executesql @sql
		set @sql='Drop table [PR_OrderDetails_' + ltrim(rtrim(@s_Ind)) +']'
		exec sp_executesql @sql
		set @sql='Drop table [Ls_Orders_' + ltrim(rtrim(@s_Ind)) +']'
		exec sp_executesql @sql
		Fetch next from Cur into @s_Ind
	end
	Close Cur
	Deallocate Cur
	Delete from tblIndexorders
