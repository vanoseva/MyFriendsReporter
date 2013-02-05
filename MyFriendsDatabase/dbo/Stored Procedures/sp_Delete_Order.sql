

CREATE  Procedure [dbo].[sp_Delete_Order] (@s_ID nvarchar(50))
as
	Update PR_Product_Store  
	set f_CurInstock=f_CurInstock+(pro.f_Quantity*pro.f_Convert) 
	from PR_OrderDetails pro
	Where PR_Product_Store.s_Product_ID=pro.s_Product_ID 
		and PR_Product_Store.s_Store_ID=pro.s_Store_ID
		and pro.[s_OrderID]=@s_ID

	Delete from [PR_OrderDetails] where [s_OrderID]=@s_ID

	Delete from [LS_Orders] where [s_ID]=@s_ID

