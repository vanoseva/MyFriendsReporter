CREATE view [dbo].[v_NumberOutcome_Commission]          
as          
          
Select ls.s_ID as [Object_ID],ls.s_ID as NumberID,cast(null as SmallDatetime) as dayMonth,          
isnull(ct.Total,0) as m_Commission ,cast(0 as int) as nCase           
from ls_Objects ls          
 Left outer join           
 (Select pr.s_NumberID as s_Object_ID,sum(pr.m_Total) as Total from pr_NumberOutcome_commission pr group by pr.s_NumberID) as ct          
 On ls.s_ID=ct.s_Object_ID          
          
where b_Customer=1          
          
union all          
          
Select v.s_ObjectID as [Object_ID],s_ID as NumberID,v.dt_OrderDate as dayMonth,(v.m_Commission-isnull(ct.Total,0)) as m_Commission,cast(1 as int) as nCase  
from V_FullOrder v          
left outer join          
(Select s_NumberID,sum(m_Total) as Total from pr_NumberOutcome_commission group by s_NumberID) as ct          
          
On v.s_ID=s_NumberID 