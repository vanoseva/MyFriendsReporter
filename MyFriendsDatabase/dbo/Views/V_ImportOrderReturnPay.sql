create view [dbo].[V_ImportOrderReturnPay]
as
select importid, sum(m_pay) as m_totalpay 
from pr_importorderreturnpay
group by importid
