CREATE proc [dbo].[sp_CheckDebt](@s_Object_ID as nvarchar(50))          
as          
BEGIN          
 --tra cong no dau ky
 SELECT  isnull(sum(prn.m_Total),0) as Debt          
 FROM pr_NumberOutcome prn               
    WHERE prn.s_NumberID=@s_Object_ID      
UNION ALL                    
 --thu cong no dau ky
 SELECT  isnull(sum(pri.m_Total),0) as Debt           
 FROM pr_NumberIncome pri           
  WHERE pri.s_NumberID=@s_Object_ID          
END