CREATE  Procedure [dbo].[sp_getListUnit_Product_Store] 
as 
	Select * from 
	(Select s_Unit as s_ID, [s_ID] as s_Product_ID, s_Unit,cast(1 as float) as f_ConvertedQuantity, cast(0 as bit) as b_DefaultInstock 
	,cast(0 as int) as nCase
	from ls_Products 
	union all  
	Select s_ID,s_Product_ID,s_Unit,f_ConvertedQuantity,b_DefaultInstock,cast(1 as int) as nCase from PR_Product_Units)
	as KQ
	Order by s_Product_ID asc ,b_DefaultInstock desc,nCase asc