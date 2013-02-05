
CREATE  Procedure [dbo].[sp_getList_FromToDate_Status_PurchaseImport](@nCase int, @dt_fromDate smalldatetime,@dt_toDate smalldatetime,@stat int )
as
Declare @sql nvarchar(4000)
	Declare @fromDate nvarchar(50),@toDate nvarchar(50)
	set @fromDate=ltrim(rtrim(str(year(@dt_fromDate)))) + '-'+ ltrim(rtrim(str(month(@dt_fromDate)))) + '-'+ ltrim(rtrim(str(day(@dt_fromDate)))) 
	set @toDate=ltrim(rtrim(str(year(@dt_toDate)))) + '-'+ ltrim(rtrim(str(month(@dt_toDate)))) + '-'+ ltrim(rtrim(str(day(@dt_toDate)))) 

	Create table #tmpStatusPurchaseImport
	(intStat int,s_Status nvarchar(100))	
	Insert into #tmpStatusPurchaseImport(intStat,s_Status) values(1,N'Đang đặt hàng')
	Insert into #tmpStatusPurchaseImport(intStat,s_Status) values(2,N'Đã nhận hàng')
	Insert into #tmpStatusPurchaseImport(intStat,s_Status) values(3,N'Đã hủy')
	

	set @sql='SELECT p.*, TenNCC=O.s_Name, TenLienHeNCC=c.s_Name, TenNV=E.s_Name, ThanhToan=pay.s_Name'
    set @sql=@sql + ' FROM LS_PurchaseImports p JOIN Ls_Objects O ON p.s_Object_ID=o.s_ID'
    set @sql=@sql + ' LEFT JOIN LS_Contacts c ON p.s_ContactID=c.s_ID '
	set @sql=@sql + ' JOIN LS_Employees e ON p.s_EmployeeID=e.s_ID '
	set @sql=@sql + ' JOIN LS_PaymentTerm pay ON p.PaymentTermID=pay.s_ID '
	set @sql=@sql + ' Left Join #tmpStatusPurchaseImport t On p.s_Status=t.s_Status '
	set @sql=@sql + ' WHERE 1=1 '
	
	if @nCase=1		--hom nay
		set @sql=@sql +' AND DATEDIFF(day, p.dt_CreateDate, GETDATE())=0'
	else if @nCase=2		--hom qua
		set @sql=@sql +' AND DATEDIFF(day, p.dt_CreateDate, GETDATE())=1'
	else if @nCase=3		--tuan nay
		set @sql=@sql +' AND DATEDIFF(week, p.dt_CreateDate, GETDATE())=0'
	else if @nCase=4		--tuan truoc
		set @sql=@sql +' AND DATEDIFF(week, p.dt_CreateDate, GETDATE())=1'
	else if @nCase=5		--thang nay
		set @sql=@sql +' AND DATEDIFF(Month, p.dt_CreateDate, GETDATE())=0'
	else if @nCase=6		--thang truoc
		set @sql=@sql +' AND DATEDIFF(Month, p.dt_CreateDate, GETDATE())=1'
	else if @nCase=7		--tuy chon
		set @sql=@sql +' AND DATEDIFF(day,p.dt_CreateDate,'''+ @fromDate + ''')<=0 and DATEDIFF(day,p.dt_CreateDate,'''+@toDate+''')>=0'

	if @stat In (1,2,3)
		set @sql=@sql +' AND t.intStat=' + ltrim(rtrim(str(@stat)))	
	
	set @sql=@sql + ' ORDER BY p.dt_CreateDate DESC, p.i_IDSort DESC' 
	exec sp_executesql @sql