CREATE  Procedure  [dbo].[sp_getListType_Objects](@isCus bit)    
as      
 if @isCus =1    
  Select * from [V_FullObjects] where b_Customer=1 Order by s_Name asc    
 else    
  Select * from [V_FullObjects] where b_Supplier=1 Order by s_Name asc 
