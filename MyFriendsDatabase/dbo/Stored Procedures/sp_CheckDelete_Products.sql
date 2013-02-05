CREATE  Procedure  [dbo].[sp_CheckDelete_Products](@s_ID nvarchar(50))      
as         
         Select count(*) as C from PR_ImportDetail where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_ImportDetailReturn where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_OrderConsignDetail where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_OrderDetailReturns where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_ImportConsignDetail where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_PurchaseImportDetails where s_Product_ID=@s_ID       
         Union Select count(*) as C from V_FullOrderDetails where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_PurchaseOrderDetails where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_Quote where s_Product_ID=@s_ID       
         Union Select count(*) as C from PR_TransDetails where s_Product_ID=@s_ID     
		 Union Select count(*) as C from PR_ImportDetail_Other where s_Product_ID=@s_ID     
		 Union Select count(*) as C from PR_OrderDetail_Other where s_Product_ID=@s_ID   
		 Union Select count(*) as C from PR_OrderDetail_Other where s_Product_ID=@s_ID     
		 Union Select count(*) as C from PR_ImportDetail_Other where s_Product_ID=@s_ID   
		 Union Select count(*) as C from tmpResOrderDetail where Product_ID=@s_ID   
		 Union Select count(*) as C from Pr_ResOrderDetail_NH where Product_ID=@s_ID