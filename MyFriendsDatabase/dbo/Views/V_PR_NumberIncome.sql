create view [dbo].[V_PR_NumberIncome]
as
select s_NumberID, sum(isnull(m_Total,0)) as m_SumPayed
from pr_numberincome 
group by s_NumberID