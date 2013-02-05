CREATE View [dbo].[V_EmployeeShift]  
as  
	Select s.s_ID as s_Shift_ID,s.s_Name as s_Shift_Name,s.dt_fromTime,s.dt_toTime,ls.*
	,isnull(dt_Holidays,dateadd(Year,1,getdate())) as Holidays
	from ls_employees ls cross join ls_Shift s  
	where s.b_Valid=1