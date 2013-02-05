CREATE Procedure sp_Salary(@dayMonth smalldatetime)      
as      
 Set  nocount on      
 Insert into pr_salary(s_Employee_ID,i_Year,i_Month,m_FixSalary,n_Shift,m_reward,f_Perreward,m_Salary,m_Borrow,m_PaySalary,m_LastMonth,m_Instock,m_Sales,f_Discount)       
 Select s_ID,Year(@dayMonth),Month(@dayMonth),0,0,0,0,0,0,0,0,0,0,0 from LS_Employees ls      
 where (Select count(*) from pr_salary where s_Employee_ID=ls.s_ID and i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth) )=0      
 and Datediff(Month,isnull(ls.dt_Holidays,dateadd(Year,1,getdate())),@dayMonth)<=0    
 and ls.b_isActive=1    
 --Luong theo ca    
 Update pr_salary set m_FixSalary=ls.m_SalaryOf from       
 LS_Employees ls     
 where pr_salary.s_Employee_ID=ls.s_ID and ls.m_SalaryOf<>0 and i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)      
 --Theo thang    
 Update pr_salary set m_FixSalary=ls.m_BasicSalary from       
 LS_Employees ls     
 where pr_salary.s_Employee_ID=ls.s_ID and ls.m_SalaryOf=0 and i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)     
    
 --Tam ung      
 Update pr_salary set m_Borrow=t.Total from       
 (Select o.s_Object_ID as Employee_ID,isnull(sum(m_Total),0) as Total from Ls_Outcome o, tblConfigStore c   
where case when isnull(o.i_Item_ID,'')='' then o.i_GroupItem_ID else o.i_Item_ID end = c.s_MethodTU      
 and datediff(Month,o.dt_DayMonth,@dayMonth)=0 Group by o.s_Object_ID) as t      
 where pr_salary.s_Employee_ID=t.Employee_ID and i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)      
       
 --Chi luong      
 Update pr_salary set m_PaySalary=t.Total from       
 (Select o.s_Object_ID as Employee_ID,isnull(sum(m_Total),0) as Total from Ls_Outcome o, tblConfigStore c   
where case when isnull(o.i_Item_ID,'')='' then o.i_GroupItem_ID else o.i_Item_ID end = c.s_MethodCL      
 and datediff(Month,o.dt_DayMonth,@dayMonth)=0 Group by o.s_Object_ID) as t      
 where pr_salary.s_Employee_ID=t.Employee_ID and i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)      
      
 --So ca lam viec      
 Update pr_salary set n_Shift=t.Total from       
 (Select o.s_Employee_ID as Employee_ID,Count(*) as Total from V_Work4Day o      
 where o.V='C' and i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth) Group by o.s_Employee_ID) as t      
 where pr_salary.s_Employee_ID=t.Employee_ID and i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)      
       
 Declare @LastMonth smalldatetime      
 Select @LastMonth=Max(DayMonth) from V_Salary where Datediff(Month,DayMonth,@dayMonth)>0      
       
 if not @LastMonth is null      
 Begin      
  Update pr_salary set m_LastMonth=t.m_Instock from       
  (Select s_Employee_ID,m_Instock from V_Salary where Datediff(Month,DayMonth,@LastMonth)=0) as t       
  where pr_salary.s_Employee_ID=t.s_Employee_ID      
      
 end      
       
 --Cap nhat luong      
 Exec sp_UpdateSalary @dayMonth      
 Set  nocount off