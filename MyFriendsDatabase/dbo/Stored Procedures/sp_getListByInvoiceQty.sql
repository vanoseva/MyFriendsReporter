CREATE proc sp_getListByInvoiceQty(@casetime int,@fromDate smalldatetime,@toDate smalldatetime,@InvoiceQty int)
as
Begin
	if @caseTime=0
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
	else if @caseTime=1
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID
			Where DATEDIFF(day, dtUpdated, GETDATE())=0)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
	else if @caseTime=2
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID
			Where DATEDIFF(day, dtUpdated, GETDATE())=1)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
	else if @caseTime=3
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID
			Where DATEDIFF(week, dtUpdated, GETDATE())=0)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
	else if @caseTime=4
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID
			Where DATEDIFF(week, dtUpdated, GETDATE())=1)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
	else if @caseTime=5
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID
			Where DATEDIFF(month, dtUpdated, GETDATE())=0)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
	else if @caseTime=6
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID
			Where DATEDIFF(month, dtUpdated, GETDATE())=1)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
	else
		Begin
			WITH tmp AS(SELECT ROW_NUMBER() OVER(ORDER BY isGuestGetBill desc,dtUpdated desc)AS RowNum,
			r.*,t.[Name] as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID
			where Datediff(day,dtUpdated,@fromDate)<=0 and Datediff(day,dtUpdated,@toDate)>=0)
			SELECT * FROM tmp WHERE RowNum BETWEEN 1 AND @InvoiceQty ORDER BY isGuestGetBill desc,dtUpdated desc
		End
End