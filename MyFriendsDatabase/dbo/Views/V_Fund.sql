CREATE View [V_Fund]  
as  
select c.i_ID as IDKey, '' as s_Object_Key,'' as s_Object_ID, cast('1900-1-1' as smalldatetime) as Daymonth  
  ,'' as NumberID,cast(0 as money) as [131],isnull(c.m_Begin,0) as [331],'' as Description  
  ,'' as s_Bank_ID,'' as s_Bank_Name,isnull(c.m_Exchange,1) as m_Exchange,  
 cast(-2 as int) as i_Ordinal ,cast(-2 as int) as i_PaymentDebt,  
 c.IDKH_s as s_Currency_ID, c.s_Name as s_Currency_Name, i_ID as i_Currency  
  ,'' as BankID_Key, isnull(c.m_Exchange,1) as m_CurExchange, '' as ObjectName, '' as MethodName,  
 '' as MethodGroupName,'' as Method,'' as MethodGroup,cast(-1 as int) as TC  
 from Ls_Currency c  
                        
union all  
  
select b.s_ID as IDKey,'' as s_Object_Key,'' as s_Object_ID, cast('1900-1-1' as smalldatetime) as Daymonth  
  ,'' as NumberID,cast(0 as money) as [131],b.m_Begin as [331],'' as Description  
  ,isnull(b.s_Bank_ID,'') as s_Bank_ID, isnull(b.s_Name,'') as s_Bank_Name, isnull(c.m_Exchange,1) as m_Exchange,  
  cast(-1 as int) as i_Ordinal, cast(-1 as int) as i_PaymentDebt,  
  c.IDKH_s as s_Currency_ID ,c.s_Name as s_Currency_Name, b.i_Currency,isnull(b.s_ID,'') as BankID_Key  
  , isnull(c.m_Exchange,1) as m_CurExchange, '' as ObjectName, '' as MethodName, '' as MethodGroupName ,  
 '' as Method,'' as MethodGroup,cast(-1 as int) as TC  
 from ls_Banks b Left join Ls_Currency c ON b.i_Currency=c.i_ID  
   
union all   
             
select  i.s_ID as IDKey, isnull(ls.s_ID,'') as s_Object_Key, isnull(ls.s_Object_ID,'') as s_Object_ID 
  , i.dt_DayMonth as Daymonth, i.s_NumberID as NumberID, cast(0 as money) as [131]  
  , isnull(pr.m_Total,0) as [331], (i.s_PaymentReason +' - '+ case  when isnull(i.i_Item_ID,'')=''then isnull(lsoo.s_Name,'') else isnull(lso.s_Name,'') end+ i.s_Note  ) as Description, isnull(b.s_Bank_ID,'') as s_Bank_ID   
  ,isnull(b.s_Name,'') as s_Bank_Name, isnull(pr.m_Exchange,1) as m_Exchange,  
  cast(0 as int) as i_Ordinal ,i.i_PaymentDebt,  
  c.IDKH_s as s_Currency_ID, c.s_Name as s_Currency_Name, pr.i_Currency   
  , isnull(b.s_ID,'') as BankID_Key, isnull(c.m_Exchange,1) as m_CurExchange  
  , isnull(ls.s_name, i.s_Payer) as ObjectName, isnull(lsoo.s_Name,'') as MethodGroupName  
  ,isnull(lso.s_Name,'') as MethodName,isnull(i.i_Item_ID,'') as Method,isnull(i.i_GroupItem_ID,'') as MethodGroup,cast(0 as int) as TC  
 from ls_Income i left join ls_banks b On i.s_Bank_ID=b.s_ID  
  left join LS_objects ls On i.s_Object_ID=ls.s_ID  
  left join PR_IncomePaymentType pr on i.s_ID=pr.s_Income_ID  
  left join ls_currency c on pr.i_Currency=c.i_ID  
  left join ls_otherincome lso on i.i_Item_ID=lso.i_ID  
  left join ls_otherincome lsoo on i.i_GroupItem_ID=lsoo.i_ID  
union all  
select ls.s_ID as IDKey, '' as s_Object_Key,'' as s_Object_ID, ls.dt_dayMonth as Daymonth  
  ,ls.s_NumberID as NumberID,cast(0 as money) as [131],ls.m_Total as [331],N'Thu luân chuyển tiền' as Description  
  ,isnull(b.s_Bank_ID,'') as s_Bank_ID,isnull(b.s_Name,'') as s_Bank_Name,ls.f_Exchange as m_Exchange,  
 cast(1 as int) as i_Ordinal ,cast(-2 as int) as i_PaymentDebt,  
 c.IDKH_s as s_Currency_ID, c.s_Name as s_Currency_Name, i_ID as i_Currency  
  ,ls.s_BankDes as BankID_Key, isnull(c.m_Exchange,1) as m_CurExchange, '' as ObjectName, '' as MethodName,  
 '' as MethodGroupName,'' as Method,'' as MethodGroup,cast(-1 as int) as TC  
 from Ls_TransCurr ls Join Ls_Currency c ON ls.Curr=c.i_ID  
 left join Ls_Banks b ON s_BankDes=b.s_ID  
union all  
select i.s_ID as IDKey, isnull(ls.s_ID,'') as s_Object_Key, isnull(ls.s_Object_ID,'') as s_Object_ID   
  , i.dt_DayMonth as Daymonth, i.s_NumberID as NumberID, isnull(pr.m_Total,0) as [131]  
  , cast(0 as money) as [331], (i.s_PaymentReason +' - '+ case  when isnull(i.i_Item_ID,'')=''then isnull(lsoo.s_Name,'') else isnull(lso.s_Name,'') end+ i.s_Note) as Description, isnull(b.s_Bank_ID,'') as s_Bank_ID  
  , isnull(b.s_Name,'') as s_Bank_Name, isnull(pr.m_Exchange,1) as m_Exchange,  
  cast(2 as int) as i_Ordinal  , i.i_PaymentDebt,  
  c.IDKH_s as s_Currency_ID, c.s_Name as s_Currency_Name, pr.i_Currency  
  , isnull(b.s_ID,'') as BankID_Key, isnull(c.m_Exchange,1) as m_CurExchange   
  , isnull(ls.s_name, isnull(lse.s_Name,i.s_Payer)) as ObjectName, isnull(lso.s_Name,'') as MethodName,  
 isnull(lsoo.s_Name,'') as MethodGroupName ,isnull(i.i_Item_ID,'') as Method,isnull(i.i_GroupItem_ID,'') as MethodGroup,cast(1 as int) as TC   
  
 from ls_Outcome i left join ls_banks b On i.s_Bank_ID=b.s_ID  
  left join LS_objects ls On i.s_Object_ID=ls.s_ID   
  left join PR_OutcomePaymentType pr on i.s_ID=pr.s_Outcome_ID  
  left join ls_currency c on pr.i_Currency=c.i_ID  
  left join ls_Employees lse on i.s_Object_ID=lse.s_ID   
  left join ls_otheroutcome lso on i.i_Item_ID=lso.s_ID  
  left join ls_otheroutcome lsoo on i.i_GroupItem_ID=lsoo.s_ID  
union all  
 select ls.s_ID as IDKey, '' as s_Object_Key,'' as s_Object_ID, ls.dt_dayMonth as Daymonth  
  ,ls.s_NumberID as NumberID,ls.m_Total as [131],cast(0 as money) as [331],N'Chi luân chuyển tiền' as Description  
  ,isnull(b.s_Bank_ID,'') as s_Bank_ID,isnull(b.s_Name,'') as s_Bank_Name,ls.f_Exchange as m_Exchange,  
 cast(3 as int) as i_Ordinal ,cast(-2 as int) as i_PaymentDebt,  
 c.IDKH_s as s_Currency_ID, c.s_Name as s_Currency_Name, i_ID as i_Currency  
  ,ls.s_BankSource as BankID_Key, isnull(c.m_Exchange,1) as m_CurExchange, '' as ObjectName, '' as MethodName,  
 '' as MethodGroupName,'' as Method,'' as MethodGroup,cast(-1 as int) as TC  
 from Ls_TransCurr ls Join Ls_Currency c ON ls.Curr=c.i_ID  
 left join Ls_Banks b ON s_BankSource=b.s_ID