CREATE Procedure  [dbo].[sp_CheckDelete_Objects](@ID nvarchar(50))    
as    
  Select count(*) as C,'Pr_RegisterObject' as tbName from Pr_RegisterObject where [Object_ID]=@ID    
    
       Union all Select count(*) as C,'PR_Invoices' as tbName from PR_Invoices where [Object_ID]=@ID