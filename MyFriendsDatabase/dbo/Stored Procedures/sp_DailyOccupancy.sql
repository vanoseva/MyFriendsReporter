CREATE proc sp_DailyOccupancy(@dtDate as datetime)
as
Begin
	select t.Statistic,sum(t.today)as Today,sum(t.WTD)as WTD,sum(t.MTD)as MTD,sum(t.YTD)as YTD
	from(
	select '%O'as Statistic,o as Today,0 as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(day,daymonth,@dtDate)=0
	UNION ALL
	select '%O'as Statistic,0 as Today,isnull(sum(o),0) as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(week,daymonth,@dtDate)=0
	UNION ALL
	select '%O'as Statistic,0 as Today,0 as WTD,isnull(sum(o),0) AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(month,daymonth,@dtDate)=0
	UNION ALL
	select '%O'as Statistic,0 as Today,0 as WTD,0 AS MTD,isnull(sum(o),0) AS YTD from ls_DailyOccupancy 
	where datediff(year,daymonth,@dtDate)=0)AS t group by t.Statistic

	UNION ALL

	select t.Statistic,sum(t.today)as Today,sum(t.WTD)as WTD,sum(t.MTD)as MTD,sum(t.YTD)as YTD
	from(
	select 'NOO'as Statistic,NOO as Today,0 as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(day,daymonth,@dtDate)=0
	UNION ALL
	select 'NOO'as Statistic,0 as Today,isnull(sum(NOO),0) as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(week,daymonth,@dtDate)=0
	UNION ALL
	select 'NOO'as Statistic,0 as Today,0 as WTD,isnull(sum(NOO),0) AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(month,daymonth,@dtDate)=0
	UNION ALL
	select 'NOO'as Statistic,0 as Today,0 as WTD,0 AS MTD,isnull(sum(NOO),0) AS YTD from ls_DailyOccupancy 
	where datediff(year,daymonth,@dtDate)=0)AS t group by t.Statistic

	UNION ALL

	select t.Statistic,sum(t.today)as Today,sum(t.WTD)as WTD,sum(t.MTD)as MTD,sum(t.YTD)as YTD
	from(
	select 'AverageRate'as Statistic,AverageRate as Today,0 as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(day,daymonth,@dtDate)=0
	UNION ALL
	select 'AverageRate'as Statistic,0 as Today,isnull(sum(AverageRate),0) as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(week,daymonth,@dtDate)=0
	UNION ALL
	select 'AverageRate'as Statistic,0 as Today,0 as WTD,isnull(sum(AverageRate),0) AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(month,daymonth,@dtDate)=0
	UNION ALL
	select 'AverageRate'as Statistic,0 as Today,0 as WTD,0 AS MTD,isnull(sum(AverageRate),0) AS YTD from ls_DailyOccupancy 
	where datediff(year,daymonth,@dtDate)=0)AS t group by t.Statistic

	UNION ALL

	select t.Statistic,sum(t.today)as Today,sum(t.WTD)as WTD,sum(t.MTD)as MTD,sum(t.YTD)as YTD
	from(
	select 'AverageLengthOfStay'as Statistic,AverageLengthOfStay as Today,0 as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(day,daymonth,@dtDate)=0
	UNION ALL
	select 'AverageLengthOfStay'as Statistic,0 as Today,isnull(sum(AverageLengthOfStay),0) as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(week,daymonth,@dtDate)=0
	UNION ALL
	select 'AverageLengthOfStay'as Statistic,0 as Today,0 as WTD,isnull(sum(AverageLengthOfStay),0) AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(month,daymonth,@dtDate)=0
	UNION ALL
	select 'AverageLengthOfStay'as Statistic,0 as Today,0 as WTD,0 AS MTD,isnull(sum(AverageLengthOfStay),0) AS YTD from ls_DailyOccupancy 
	where datediff(year,daymonth,@dtDate)=0)AS t group by t.Statistic

	UNION ALL

	select t.Statistic,sum(t.today)as Today,sum(t.WTD)as WTD,sum(t.MTD)as MTD,sum(t.YTD)as YTD
	from(
	select 'NoOfArr'as Statistic,NoOfArr as Today,0 as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(day,daymonth,@dtDate)=0
	UNION ALL
	select 'NoOfArr'as Statistic,0 as Today,isnull(sum(NoOfArr),0) as WTD,0 AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(week,daymonth,@dtDate)=0
	UNION ALL
	select 'NoOfArr'as Statistic,0 as Today,0 as WTD,isnull(sum(NoOfArr),0) AS MTD,0 AS YTD from ls_DailyOccupancy 
	where datediff(month,daymonth,@dtDate)=0
	UNION ALL
	select 'NoOfArr'as Statistic,0 as Today,0 as WTD,0 AS MTD,isnull(sum(NoOfArr),0) AS YTD from ls_DailyOccupancy 
	where datediff(year,daymonth,@dtDate)=0)AS t group by t.Statistic
End