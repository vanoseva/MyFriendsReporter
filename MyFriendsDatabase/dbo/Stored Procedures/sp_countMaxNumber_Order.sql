﻿CREATE  Procedure [dbo].[sp_countMaxNumber_Order] (@d_Date smalldatetime)      
as    
  --isnull(MAX(left(s_Order_ID,len(s_Order_ID)-7)),0)  
 SELECT max(cast(isnull(left(s_Order_ID,len(s_Order_ID)-5),0) as int)) +1   as s_Num       
         FROM v_fullorder       
         WHERE isnumeric(left(s_Order_ID,len(s_Order_ID)-5))=1 and datediff(yy,dt_OrderDate,@d_Date)=0      
