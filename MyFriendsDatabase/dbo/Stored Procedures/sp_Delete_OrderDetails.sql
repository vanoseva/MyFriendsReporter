



CREATE Procedure [dbo].[sp_Delete_OrderDetails](@s_Order_ID nvarchar(50)) 
as	
	--03.12.08
--	Declare @s_Product_ID nvarchar(50), @s_Store_ID nvarchar(50), @f_Quantity float, @f_Convert float
--	Declare CurStore Cursor for
--		Select s_Product_ID, f_Quantity, s_Store_ID, f_Convert From PR_OrderDetails
--	Open CurStore
--	Fetch next from CurStore into @s_Product_ID, @f_Quantity, @s_Store_ID, @f_Convert
--	While @@Fetch_Status=0
--	Begin
--		If @s_Product_ID<>''
--		Begin
--			Update PR_Product_Store set f_CurInstock=f_CurInstock+(@f_Quantity*@f_Convert)
--			Where s_Product_ID=@s_Product_ID and s_Store_ID=@s_Store_ID
--		End
--		
--		Fetch next from CurStore into @s_Product_ID, @f_Quantity, @s_Store_ID, @f_Convert
--	End
--	Close CurStore
--	Deallocate CurStore
	
	Update PR_Product_Store  
	set f_CurInstock=f_CurInstock+(pro.f_Quantity*pro.f_Convert) 
	from PR_OrderDetails pro
	Where PR_Product_Store.s_Product_ID=pro.s_Product_ID 
		and PR_Product_Store.s_Store_ID=pro.s_Store_ID
		and pro.[s_OrderID]=@s_Order_ID

	Delete from [PR_OrderDetails] where [s_OrderID]=@s_Order_ID







