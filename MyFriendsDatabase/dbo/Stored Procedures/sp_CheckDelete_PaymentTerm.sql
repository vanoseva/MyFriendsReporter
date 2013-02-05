
CREATE  Procedure  [dbo].[sp_CheckDelete_PaymentTerm](@i_TermID nvarchar(50))
as		 
         Select count(*) as C from Ls_Quote where i_TermID=@i_TermID 
         Union Select count(*) as C from Ls_PurchaseOrders where i_TermID=@i_TermID 
         Union Select count(*) as C from V_FullOrder where i_TermID=@i_TermID 