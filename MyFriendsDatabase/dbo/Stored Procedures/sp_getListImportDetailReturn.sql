CREATE Procedure [dbo].[sp_getListImportDetailReturn](@ID nvarchar(50))          
as          
	Select ls.s_Product_ID as Product_IDchar, ls.s_Name as Product_Name, 
	dt.[s_ID],dt.[s_Import_ID],dt.[s_Product_ID]
	,dt.[f_Quantity],dt.[m_PriceImport],dt.[m_PriceOrder]
	,dt.[s_Store_ID],ISNULL(pr.s_Unit, dt.s_Unit) AS s_Unit,dt.[f_Convert],dt.[f_QuantityOrder]
	,dt.[i_IDsort],dt.[m_PriceUSD],dt.[dt_OverDate]
	,dt.[OrderID],dt.[s_Note]
	, dt.f_Quantity*m_PriceImport as m_Total , 
	dt.m_PriceImport as m_PriceImport         
	from Pr_ImportDetailReturn dt JOIN ls_Products ls ON  dt.s_Product_ID=ls.s_ID         
	LEFT JOIN PR_Product_Units pr ON dt.s_Unit = pr.s_ID
	where  dt.s_Import_ID=@ID