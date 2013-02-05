
CREATE  Procedure [dbo].[sp_CheckNumber_Order] (@s_Order_ID nvarchar(50),@s_ID nvarchar(50))  
as  
 if @s_ID<>''  
  SELECT count(*) as c FROM V_FullOrder   
  WHERE s_Order_ID =@s_Order_ID and s_ID<>@s_ID  
 else  
  SELECT count(*) as c FROM V_FullOrder   
  WHERE s_Order_ID =@s_Order_ID
