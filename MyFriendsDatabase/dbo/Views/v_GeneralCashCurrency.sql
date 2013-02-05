CREATE view [dbo].[v_GeneralCashCurrency]
as
	select isnull(ls.s_ID,'') as s_Object_Key,isnull(ls.s_Name,'') as s_ObjectName, i.dt_DayMonth as Daymonth,i.s_NumberID as NumberID
	,c.s_Name as s_Currency, p.m_exchange ,cast(0 as money) as Outcome,p.m_Total as Income
	,i.s_PaymentReason as Description    
	 ,isnull(b.s_Bank_ID,'') as s_Bank_ID,isnull(b.s_Name,'') as s_Bank_Name,cast(0 as int) as i_Ordinal,i.i_PaymentDebt     
	 from ls_Income i left join ls_banks b On i.s_Bank_ID=b.s_ID     
	 left join LS_objects ls On i.s_Object_ID=ls.s_ID   left outer join PR_incomePaymentType p 
	on i.s_ID=p.s_income_ID left join ls_currency c on p.i_currency=c.i_ID
	    
	union all    
	    
	select isnull(ls.s_ID,'') as s_Object_Key,isnull(ls.s_Name,'') as s_ObjectName, i.dt_DayMonth as Daymonth,i.s_NumberID as NumberID
	,c.s_Name as s_Currency, p.m_exchange ,p.m_total as Outcome,cast(0 as money) as Income
	,i.s_PaymentReason as Description    
	 ,isnull(b.s_Bank_ID,'') as s_Bank_ID,isnull(b.s_Name,'') as s_Bank_Name,cast(1 as int) as i_Ordinal,i.i_PaymentDebt 
	   from ls_Outcome i left join ls_banks b On i.s_Bank_ID=b.s_ID     
	 left join LS_objects ls On i.s_Object_ID=ls.s_ID   left join PR_OutcomePaymentType p
	on  i.s_ID=p.s_Outcome_ID  left join ls_currency c on p.i_currency=c.i_ID