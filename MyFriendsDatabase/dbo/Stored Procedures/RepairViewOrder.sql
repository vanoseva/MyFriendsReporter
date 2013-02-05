


	
CREATE  Procedure [dbo].[RepairViewOrder]
as
	Declare @sql nvarchar(Max),@sql1 nvarchar(Max),@sql2 nvarchar(Max),
	@sTable nvarchar(1024),@sTable1 nvarchar(1024),@sTable2 nvarchar(1024),
	@sOrder nvarchar(100)
	set @sql=''
	set @sql1=''
	set @sql2=''
	Declare CurIndex cursor for
		Select s_Ind from tblIndexOrders
	Open CurIndex
	Fetch next from CurIndex into @sOrder
	while @@Fetch_Status=0
	Begin
		Set @sTable='Select *,''LS_Orders_' + ltrim(rtrim(@sOrder)) +''' as s_TableName from LS_Orders_'+ ltrim(rtrim(@sOrder))
		if @sql<>''
			set @sql=@sql + ' Union all ' + ltrim(rtrim(@sTable))
		else
			set @sql='Create View V_FullOrder as ' + ltrim(rtrim(@sTable))

		Set @sTable1='Select *,''PR_OrderDetails_' + ltrim(rtrim(@sOrder)) +''' as s_TableName from PR_OrderDetails_'+ ltrim(rtrim(@sOrder))
		if @sql1<>''
			set @sql1=@sql1 + ' Union all ' + ltrim(rtrim(@sTable1))
		else
			set @sql1='Create View V_FullOrderDetails as ' + ltrim(rtrim(@sTable1))

		Set @sTable2='Select *,''PR_OrderDetail_Fix_' + ltrim(rtrim(@sOrder)) +''' as s_TableName  from PR_OrderDetail_Fix_'+ ltrim(rtrim(@sOrder))
		if @sql2<>''
			set @sql2=@sql2 + ' Union all ' + ltrim(rtrim(@sTable2))
		else
			set @sql2='Create View V_FullOrderDetail_Fix as ' + ltrim(rtrim(@sTable2))

		Fetch next from CurIndex into @sOrder
	End
	Close CurIndex
	Deallocate CurIndex
	if (Select count(*) from sysobjects where xtype='V' and name='V_FullOrder')>0
		Drop View V_FullOrder
	if (Select count(*) from sysobjects where xtype='V' and name='V_FullOrderDetails')>0
		Drop View V_FullOrderDetails
	if (Select count(*) from sysobjects where xtype='V' and name='V_FullOrderDetail_Fix')>0
		Drop View V_FullOrderDetail_Fix

	if @sql <>''
		Exec sp_executesql @sql
	if @sql1 <>''
		Exec sp_executesql @sql1
	if @sql2 <>''
		Exec sp_executesql @sql2



