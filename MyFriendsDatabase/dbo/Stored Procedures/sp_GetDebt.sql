CREATE proc [dbo].[sp_GetDebt](@s_Object_ID as nvarchar(50))        
as        
BEGIN        
 --công nợ phải trả        
 SELECT  isnull(sum(v.TotalNew),0) as Debt        
 FROM V_NumberOutcomeNew v             
    WHERE v.Object_ID=@s_Object_ID    
UNION ALL                  
 --công nợ phải thu        
 SELECT  isnull(sum(v.TotalNew),0) as Debt         
 FROM V_NumberIncomeNew v           
  WHERE v.Object_ID=@s_Object_ID        
END