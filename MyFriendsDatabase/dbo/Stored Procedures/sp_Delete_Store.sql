CREATE  Procedure  [dbo].[sp_Delete_Store](@s_ID nvarchar(50))  
as  
 Delete from PR_Product_Store where s_Store_ID=@s_ID
 Delete from [LS_Stores] where [s_ID]=@s_ID
