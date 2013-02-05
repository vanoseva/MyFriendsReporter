CREATE  Procedure  [dbo].[sp_CheckDelete_PaymentOrder](@ID nvarchar(50))  
as  
 Select count(*) as C from [Ls_Order_Other] where [i_ItemID]=@ID