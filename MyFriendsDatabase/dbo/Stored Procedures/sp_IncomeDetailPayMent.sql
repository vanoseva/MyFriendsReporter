CREATE proc [dbo].[sp_IncomeDetailPayMent](@s_NumberID as nvarchar(50))  
as  
 select i.s_Order_ID,o.s_NumberID,o.dt_DayMonth,p.*   
 from Pr_NumberIncome p left outer join LS_Income o on p.s_IncomeID=o.s_ID   
 left outer join V_Orders i on p.s_NumberID=i.s_ID   
 where p.s_NumberID=@s_NumberID