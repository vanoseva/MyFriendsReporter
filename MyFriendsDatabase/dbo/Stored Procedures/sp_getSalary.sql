CREATE Procedure [dbo].[sp_getSalary] (@dayMonth smalldatetime) 
as	
--	if (Select count(*) as C from V_Salary where Datediff(Month,dayMonth,@dayMonth)=0 )=0
--		exec sp_Salary @dayMonth

	select * from V_Salary where Datediff(Month,dayMonth,@dayMonth)=0 
	and Datediff(Month,dt_Holidays,@dayMonth)<=0 
	order by Employee_Name
