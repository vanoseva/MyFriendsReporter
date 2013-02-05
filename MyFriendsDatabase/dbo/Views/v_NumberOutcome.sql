CREATE view [v_NumberOutcome]
as
 Select ls.Object_ID as [Object_ID],ls.s_ID as NumberID,cast(null as SmallDatetime) as dayMonth,
 ls.Outcome -isnull(ct.Total,0) as Total ,cast(0 as int) as nCase,N'Công nợ đầu kỳ' as Note,isnull(ls.Curr,'VND') as Curr
 from PR_BeginDebt ls
  Left outer join
  (Select pr.s_NumberID,sum(pr.m_Total) as Total from pr_NumberOutcome pr group by pr.s_NumberID) as ct
  On ls.s_ID=ct.s_NumberID
           
 where ls.Outcome<>0
           
 union all
           
 Select v.s_Object_ID as [Object_ID],s_ID as NumberID,v.dt_ImportDate as dayMonth,
(v.m_ImportTotal -isnull(ct.Total,0)) as Total
 ,cast(1 as int) as nCase,N'Nhập hàng' as Note,isnull(v.Curr,'VND') as Curr
from Ls_Imports v
 left outer join
 (Select s_NumberID,sum(m_Total) as Total from pr_NumberOutcome group by s_NumberID) as ct
           
 On v.s_ID=s_NumberID