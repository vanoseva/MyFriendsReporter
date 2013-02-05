CREATE VIEW [dbo].[V_NumberOutcomeNew]
as    
 select v.*, v.Total-ISNULL(pr.m_totalpay,0) as TotalNew
 from V_NumberOutcome v left outer join V_ImportOrderReturnPay pr on v.numberid=pr.importid