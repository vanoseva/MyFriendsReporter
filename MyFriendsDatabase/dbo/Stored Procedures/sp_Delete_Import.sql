CREATE Procedure [dbo].[sp_Delete_Import](@s_ID nvarchar(50))            
as            
 exec sp_Delete_ImportDetails @s_ID       
 Delete from ls_Imports where  s_ID=@s_ID