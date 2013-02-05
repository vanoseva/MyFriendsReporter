CREATE View V_RegisterGroup  
as   
Select *,   
 cast(ltrim(rtrim(str(year(dbo.PR_RegisterGroup.From_date)))) + '-' +   
  ltrim(rtrim(str(month(dbo.PR_RegisterGroup.From_date)))) + '-' +   
  ltrim(rtrim(str(day(dbo.PR_RegisterGroup.From_date)))) as smalldatetime) as ArrDate,           
 cast(ltrim(rtrim(str(year(dbo.PR_RegisterGroup.To_date)))) + '-' + ltrim(rtrim(str(month(dbo.PR_RegisterGroup.To_date)))) + '-' +         
  ltrim(rtrim(str(day(dbo.PR_RegisterGroup.To_date)))) as smalldatetime) as DepDate       
From PR_RegisterGroup