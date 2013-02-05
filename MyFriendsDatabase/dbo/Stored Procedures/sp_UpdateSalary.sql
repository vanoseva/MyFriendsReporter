CREATE Procedure [dbo].[sp_UpdateSalary](@dayMonth smalldatetime)  
as  
	--Cap nhat luong theo  ca
	 Update pr_salary set m_Salary=(isnull(m_FixSalary,0)*isnull(n_Shift,0)+isnull(m_reward,0) +isnull(f_Discount,0)*isnull(m_Sales,0)/100)*(1+isnull(f_PerReward,0)/100)   
	 where i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)  
		and s_Employee_ID in (Select s_ID from ls_Employees where m_SalaryOf<>0)
	--Cap nhat luong theo thang
	 Update pr_salary set m_Salary=(isnull(m_FixSalary,0)+isnull(m_reward,0) +isnull(f_Discount,0)*isnull(m_Sales,0)/100)*(1+isnull(f_PerReward,0)/100)   
	 where i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)  
		and s_Employee_ID in (Select s_ID from ls_Employees where m_SalaryOf=0)

	 Update pr_salary set   
	 m_Instock= isnull(m_Salary,0)+isnull(m_LastMonth,0)-isnull(m_borrow,0)-isnull(m_PaySalary,0)  
	 where i_Year=Year(@dayMonth) and i_Month=Month(@dayMonth)
