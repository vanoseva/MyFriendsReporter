CREATE proc [dbo].[sp_DetailPayMent](@s_NumberID as nvarchar(50))  
as  
 select i.s_Import_ID,o.s_NumberID,o.dt_DayMonth ,p.* from pr_numberoutcome p left outer join   
  ls_outcome o on p.s_OutcomeID=o.s_ID left outer join   
  ls_imports i on p.s_NumberID=i.s_ID   
 where p.s_NumberID=@s_NumberID