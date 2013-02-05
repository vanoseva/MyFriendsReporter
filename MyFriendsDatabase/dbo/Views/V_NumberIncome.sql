CREATE view [V_NumberIncome]   
 as   
  Select ls.Curr,ls.[Object_ID],ls.s_ID as NumberID,cast(null as SmallDatetime) as dayMonth,  
  ls.Income -isnull(ct.Total,0) as Total ,cast(0 as int) as nCase ,N'Begin' as Note   
  from PR_BeginDebt ls   
   Left outer join    
   (Select Pr.s_NumberID as s_Object_ID,sum(pr.m_Total) as Total from pr_NumberIncome pr group by Pr.s_NumberID) as ct   
   On ls.s_ID=ct.s_Object_ID   
  where Income<>0   
  union all
      
  Select Isnull(v.CurrPay,v.Curr) as Curr, ObjectID as [Object_ID],s_ID as NumberID,v.dayMonth as dayMonth,(v.MDebt -isnull(ct.Total,0)) as Total,      
  cast(2 as int) as nCase,N'Nợ nhà hàng' as Note   
  from Ls_ResOrder v   
  left outer join    
  (Select s_NumberID,sum(m_Total) as Total from pr_NumberIncome group by s_NumberID) as ct       
  On v.s_ID=s_NumberID    
  where isnull(v.ObjectID,'')<>'' and v.MDebt<>0