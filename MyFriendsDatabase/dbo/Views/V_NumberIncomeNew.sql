CREATE VIEW [V_NumberIncomeNew]      
as      
 select v.*, v.Total-ISNULL(pr.m_totalpay,0) as TotalNew      
 from V_NumberIncome v left outer join V_OrderImportReturnPay pr on v.numberid=pr.OrderID