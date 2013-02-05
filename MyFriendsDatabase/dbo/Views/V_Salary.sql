CREATE View [dbo].[V_Salary]    
as    
 Select isnull(ls.b_isSales,0) as isSales, ls.s_Employee_ID as Employee_ID,ls.s_Name as Employee_Name,  
 isBasis= case when ls.m_SalaryOf=0 then cast(1 as bit) else cast(0 as bit) end,  
 isnull(dt_Holidays,dateadd(Year,1,getdate())) as dt_Holidays,  
 cast(ltrim(rtrim(str(p.i_year))) + '-'+ ltrim(rtrim(str(p.i_month))) +'-1' as smalldatetime) as DayMonth ,p.*    
 from pr_salary p,    
 ls_Employees ls where p.s_Employee_ID=ls.s_ID 