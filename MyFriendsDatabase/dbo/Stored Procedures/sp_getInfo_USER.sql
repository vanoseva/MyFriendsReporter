CREATE Procedure [dbo].[sp_getInfo_USER](@UID nvarchar(50))  
as   
 Select * from LS_USER where s_UID=@UID