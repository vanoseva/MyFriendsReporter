CREATE  Procedure [dbo].[sp_getList_Case_ResOrder](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)        
as        
 if @caseTime=0        
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID order by dtUpdated desc      
 else if @caseTime=1        
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID Where DATEDIFF(day, dtUpdated, GETDATE())=0 order by dtUpdated desc      
 else if @caseTime=2        
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID Where DATEDIFF(day, dtUpdated, GETDATE())=1 order by dtUpdated desc       
 else if @caseTime=3        
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID Where DATEDIFF(week, dtUpdated, GETDATE())=0 order by dtUpdated desc       
 else if @caseTime=4        
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID Where DATEDIFF(week, dtUpdated, GETDATE())=1 order by dtUpdated desc      
 else if @caseTime=5        
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID Where DATEDIFF(month, dtUpdated, GETDATE())=0 order by dtUpdated desc      
 else if @caseTime=6        
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID Where DATEDIFF(month, dtUpdated, GETDATE())=1 order by dtUpdated desc       
 else         
  Select r.*,t.Name as TableName from ls_resorder r left join ls_Table t on r.Table_ID=t.s_ID         
  where Datediff(day,dtUpdated,@fromDate)<=0 and Datediff(day,dtUpdated,@toDate)>=0 order by dtUpdated desc