CREATE  Procedure  [dbo].[sp_CheckDelete_OtherOutcome](@ID nvarchar(50))     
as   
 Select count(*) as C from [LS_OutcomeReturn] where [i_Item_ID]=@ID      
 Union all Select count(*) as C from [LS_Outcome] where [i_Item_ID]=@ID    
 Union all Select  count(*) as C from [tblConfigStore] where [s_MethodCL]=@ID or [s_MethodHH]=@ID or [s_MethodTU]=@ID OR	[s_TransCurrOut]=@ID 
 Union all Select  count(*) as C from [LS_OtherOutcome] where s_Uplevel=@ID