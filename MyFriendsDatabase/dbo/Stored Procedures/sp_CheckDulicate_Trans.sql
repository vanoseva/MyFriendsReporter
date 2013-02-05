    
CREATE  Procedure [dbo].[sp_CheckDulicate_Trans] (@s_NumberID nvarchar(50), @s_ID nvarchar(50))    
as    
 if @s_ID<>''    
  Select count(*) as c from LS_Trans where s_NumberID=@s_NumberID and s_ID<>@s_ID    
 else    
  Select count(*) as c from LS_Trans where s_NumberID=@s_NumberID 