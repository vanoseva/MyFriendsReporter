CREATE  Procedure  [dbo].[sp_CheckDelete_PaymentImport](@ID nvarchar(50))  
as  
 Select count(*) as C from [Ls_Import_Other] where [i_Item_ID]=@ID