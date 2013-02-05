CREATE Procedure [dbo].[sp_getList_FromToDate_Status_Quote_new](@nCase int, @dt_fromDate smalldatetime,@dt_toDate smalldatetime,@stat int,@ID nvarchar(100) )  
as  
 Declare @sql nvarchar(4000)  
 Declare @fromDate nvarchar(50),@toDate nvarchar(50)  
 set @fromDate=ltrim(rtrim(str(year(@dt_fromDate)))) + '-'+ ltrim(rtrim(str(month(@dt_fromDate)))) + '-'+ ltrim(rtrim(str(day(@dt_fromDate))))   
 set @toDate=ltrim(rtrim(str(year(@dt_toDate)))) + '-'+ ltrim(rtrim(str(month(@dt_toDate)))) + '-'+ ltrim(rtrim(str(day(@dt_toDate))))   
  
 Create table #tmpStatuQuote  
 (intStat int,s_Status nvarchar(100))   
 Insert into #tmpStatuQuote(intStat,s_Status) values(1,N'Đang báo giá')  
 Insert into #tmpStatuQuote(intStat,s_Status) values(2,N'Thành công')  
 Insert into #tmpStatuQuote(intStat,s_Status) values(3,N'Thất bại')  
   
  
 set @sql='SELECT Q.*, TenKH=O.s_Name, TenNV=E.s_Name'  
    set @sql=@sql +' FROM LS_Quote Q JOIN Ls_Objects O ON Q.s_Object_ID=O.s_ID'  
    set @sql=@sql +' Left JOIN LS_Employees E ON Q.s_Employee_ID=E.s_ID Left Join #tmpStatuQuote t On Q.s_Status=t.s_Status '  
   set @sql=@sql +' WHERE Q.s_Object_ID='
 set @sql=@sql + char(39)+@ID+char(39)
   
 if @nCase=1  
  set @sql=@sql +' AND DATEDIFF(day, Q.dt_CreateDate, GETDATE())=0'  
 else if @nCase=2  
  set @sql=@sql +' AND DATEDIFF(day, Q.dt_CreateDate, GETDATE())=1'  
 else if @nCase=3  
  set @sql=@sql +' AND DATEDIFF(week, Q.dt_CreateDate, GETDATE())=0'  
 else if @nCase=4  
  set @sql=@sql +' AND DATEDIFF(week, Q.dt_CreateDate, GETDATE())=1'  
 else if @nCase=5  
  set @sql=@sql +' AND DATEDIFF(Month, Q.dt_CreateDate, GETDATE())=0'  
 else if @nCase=6  
  set @sql=@sql +' AND DATEDIFF(Month, Q.dt_CreateDate, GETDATE())=1'  
 else if @nCase=7  
  set @sql=@sql +' AND DATEDIFF(day,Q.dt_CreateDate,'''+ @fromDate + ''')<=0 and DATEDIFF(day,Q.dt_CreateDate,'''+@toDate+''')>=0'  
  
 if @stat In (1,2,3)  
  set @sql=@sql +' AND t.intStat=' + ltrim(rtrim(str(@stat)))   
 else if @stat=4  
  set @sql=@sql +' AND DATEDIFF(day, Q.dt_ValidDate, GETDATE()) < 0'   
   
 set @sql=@sql + ' ORDER BY Q.dt_CreateDate DESC, Q.i_IDSort DESC'   
 exec sp_executesql @sql  
