Create  Procedure  [dbo].[sp_UpdateChangePrice_Products](@s_ID nvarchar(50),@m_UnitPrice money,@m_UnitPurchase money)
as
	
	Update LS_Products set m_UnitPrice=@m_UnitPrice, m_UnitPurchase=@m_UnitPurchase where s_ID=@s_ID