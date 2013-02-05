CREATE   Procedure [dbo].[sp_getInfo_Import_Other](@s_ID nvarchar(50))  
as  
 Select * from Ls_Import_Other where s_ID=@s_ID