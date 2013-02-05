CREATE  Procedure [dbo].[sp_getList_Trans]    
as    
 Select* from V_Trans order by dt_DayMonth  desc 