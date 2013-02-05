CREATE View [dbo].[V_Price_Product]    
as 
	SELECT p.s_ID as Product_ID,  
	 p.m_UnitPrice as Price,cast(1 as int)as sort    
	 FROM LS_Products p 
	Union  All
	  
	SELECT s_Product_ID as Product_ID,m_Price as Price,cast(2 as int)as sort FROM PR_Product_UnitPrices
