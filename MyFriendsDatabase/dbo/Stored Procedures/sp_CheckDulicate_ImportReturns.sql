
CREATE  Procedure [dbo].[sp_CheckDulicate_ImportReturns] (@s_Import_ID nvarchar(50), @s_ID nvarchar(50))      
as      
 if @s_ID<>''      
  Select count(*) as c from LS_ImportReturns where s_Import_ID=@s_Import_ID and s_ID<>@s_ID      
 else      
  Select count(*) as c from LS_ImportReturns where s_Import_ID=@s_Import_ID 