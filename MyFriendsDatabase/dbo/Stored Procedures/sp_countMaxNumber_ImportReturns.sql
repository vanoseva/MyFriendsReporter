CREATE  Procedure [dbo].[sp_countMaxNumber_ImportReturns] (@d_Date smalldatetime)          
as          
--isnull(MAX(left(s_Import_ID,len(s_Import_ID)-7)),0)      
 SELECT max(cast(isnull(left(s_Import_ID,len(s_Import_ID)-5),0) as int)) +1 as s_Num           
         FROM LS_ImportReturns        
         WHERE isnumeric(left(s_Import_ID,len(s_Import_ID)-5))=1 and datediff(yy,dt_ImportDate,@d_Date)=0