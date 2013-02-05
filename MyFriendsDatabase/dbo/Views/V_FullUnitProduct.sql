Create View [dbo].[V_FullUnitProduct]
as
	Select s_ID as s_Product_ID,s_Unit,cast(1 as float) as Exchange,cast(1 as bit) as isMain from Ls_Products

	Union all 
	Select s_Product_ID,s_Unit,f_ConvertedQuantity as Exchange,cast(0 as bit) as isMain  from PR_Product_Units
