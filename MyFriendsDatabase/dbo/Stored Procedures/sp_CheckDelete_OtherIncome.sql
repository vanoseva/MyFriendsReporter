CREATE  Procedure  [dbo].[sp_CheckDelete_OtherIncome](@ID nvarchar(50))     
as   
 Select count(*) as C from [LS_OutcomeReturn] where [i_Item_ID]=@ID      
 Union all Select count(*) as C from [LS_Outcome] where [i_Item_ID]=@ID    
 Union all Select  count(*) as C from [tblConfigStore] where [s_TransCurrInc]=@ID or [s_ThuTamUng]=@ID 
 Union all Select  count(*) as C from [LS_OtherIncome] where s_Uplevel=@ID