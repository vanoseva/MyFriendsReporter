CREATE  Procedure [dbo].[sp_countMaxNumber_Trans] (@d_Date smalldatetime)      
as      
  
 SELECT max(cast(isnull(left(s_NumberID,len(s_NumberID)-5),0) as int)) +1   as s_Num       
         FROM LS_Trans       
         WHERE isnumeric(left(s_NumberID,len(s_NumberID)-5))=1 and datediff(yy,dt_DayMonth,@d_Date)=0       
  