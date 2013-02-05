CREATE proc [dbo].[sp_InsertPR_OrderDetailReturns](
		@s_ID as nvarchar(50), @s_Order_ID as nvarchar(50),
		@s_Product_ID as nvarchar(50), @f_Quantity as float,
		 @m_Price as money, @f_Discount as float, 
		@s_Store_ID as nvarchar(50), @s_Unit as nvarchar(50),
		@f_Convert as float, @b_isPromotion as bit, 
		@b_isFix as bit, @ImportID as nvarchar(50),@s_Note as nvarchar(500))
as
begin
	Insert into [PR_OrderDetailReturns]([s_ID], [s_Order_ID], [s_Product_ID], 
			[f_Quantity], [m_Price],[f_Discount], [s_Store_ID], [s_Unit], 
			[f_Convert], [b_isPromotion], [b_isFix], [ImportID],[s_Note])
	 values(@s_ID, @s_Order_ID, @s_Product_ID, 
			@f_Quantity, @m_Price, @f_Discount, @s_Store_ID, @s_Unit,
			@f_Convert, @b_isPromotion, @b_isFix,@ImportID,@s_Note)
end