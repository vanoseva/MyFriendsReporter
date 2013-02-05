CREATE View V_RegisterPrice 
as 
Select *, 
	cast(ltrim(rtrim(str(year(From_date)))) + '-' + ltrim(rtrim(str(month(From_date)))) + '-' + 
			ltrim(rtrim(str(day(From_date)))) as smalldatetime) as dtFromDay,    
	ltrim(rtrim(datepart(hour,From_date))) + ':' + ltrim(rtrim(str(datepart(minute, From_date)))) as dtFromTime,    
	cast(ltrim(rtrim(str(year(To_date)))) + '-' + ltrim(rtrim(str(month(To_date)))) + '-' + 
			ltrim(rtrim(str(day(To_date)))) as smalldatetime) as dtToDay,    
	ltrim(rtrim(str(datepart(hour,To_date)))) + ':' + ltrim(rtrim(str(datepart(minute, To_date)))) as dtToTime
From PR_RegisterPrice 