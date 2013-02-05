CREATE  Procedure [dbo].[sp_Delete_ImportDetails](@s_ID nvarchar(50))    
as    
     
	Update PR_Product_Store      
	 set f_CurInstock=f_CurInstock - pro.f_Quantity    
	 from ( Select s_Product_ID,s_Store_ID,isnull(sum(f_Quantity*f_Convert),0)  as f_Quantity from   
	 PR_ImportDetail where s_Import_ID=@s_ID   group by s_Product_ID,s_Store_ID) as pro  
	 Where PR_Product_Store.s_Product_ID=pro.s_Product_ID     
	  and PR_Product_Store.s_Store_ID=pro.s_Store_ID    
	     
	 Update pr_PurchaseImportDetails set f_QuantityReceive=isnull(f_QuantityReceive,0) - dt.f_Quantity*dt.f_Convert/pr_PurchaseImportDetails.f_Convert
	 from PR_ImportDetail dt where pr_PurchaseImportDetails.s_ID=dt.s_Purchase_ID and dt.s_Import_ID=@s_ID
	 

	 Declare @s_Purchase_ID nvarchar(50)
	 Select @s_Purchase_ID=s_Purchase_ID from ls_Imports where s_ID=@s_ID
	 set @s_Purchase_ID=isnull(@s_Purchase_ID,'')
	 if @s_Purchase_ID<>''
		if (Select count(*) from pr_PurchaseImportDetails where f_QuantityReceive<>0 and s_OrderID=@s_Purchase_ID)=0
			Update LS_PurchaseImports Set s_Status=N'Đang đặt hàng' Where s_ID=@s_Purchase_ID 
		
	Delete from PR_ImportDetail where  s_Import_ID=@s_ID 
