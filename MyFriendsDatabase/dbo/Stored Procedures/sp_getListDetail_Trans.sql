CREATE  Procedure [dbo].[sp_getListDetail_Trans] (@s_ID nvarchar(50))    
as    
 select * from v_trandetail where s_NumberID=@s_ID order by i_IDSort 