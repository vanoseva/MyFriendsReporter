

CREATE  Procedure [dbo].[sp_getInfo_Order] (@s_ID nvarchar(50))  
as  
 Select * from V_Orders where [s_ID]=@s_ID  

