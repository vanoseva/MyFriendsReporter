CREATE  Procedure [dbo].[sp_getInfo_Trans] (@s_ID nvarchar(50))    
as    
 Select * from LS_Trans where [s_ID]=@s_ID  