CREATE  Procedure [dbo].[sp_getInfo_Order_Other] (@s_ID nvarchar(50))    
as    
 Select * from Ls_Order_Other where [s_ID]=@s_ID 