CREATE proc [dbo].[sp_InsertPR_ImportDetailReturn](  
		@s_ID as nvarchar(50), @s_Import_ID as nvarchar(50),
		@s_Product_ID as nvarchar(50), @f_Quantity as float,
		@m_PriceImport as money, @m_PriceOrder as money, 
		@s_Store_ID as nvarchar(50), @s_Unit as nvarchar(50),
		@f_Convert as float, @f_QuantityOrder as float,
		@m_PriceUSD as money, @dt_OverDate as datetime, 
		@OrderID as nvarchar(50), @s_Note as nvarchar(500))  
as  
begin  
	Insert into [PR_ImportDetailReturn]([s_ID], [s_Import_ID], [s_Product_ID], [f_Quantity], [m_PriceImport],
		[m_PriceOrder], [s_Store_ID], [s_Unit], [f_Convert], [f_QuantityOrder], 
		[m_PriceUSD], [dt_OverDate], [OrderID], [s_Note]) 
	values(@s_ID, @s_Import_ID, @s_Product_ID, @f_Quantity, @m_PriceImport, 
		@m_PriceOrder, @s_Store_ID, @s_Unit, @f_Convert, @f_QuantityOrder,
		@m_PriceUSD, @dt_OverDate, @OrderID, @s_Note)
end