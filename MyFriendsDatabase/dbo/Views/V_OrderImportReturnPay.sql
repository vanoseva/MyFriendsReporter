create view [dbo].[V_OrderImportReturnPay]  
as  
select OrderID, sum(m_pay) as m_totalpay   
from Pr_OrderImportReturnPay  
group by OrderID  