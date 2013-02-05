CREATE  Procedure  [dbo].[sp_CheckMakeProduct](@IDNL nvarchar(50),@IDTP nvarchar(50))    
as    
 Select * from pr_Makeproduct where s_Product_ID_1 =@IDNL and s_Product_ID=@IDTP