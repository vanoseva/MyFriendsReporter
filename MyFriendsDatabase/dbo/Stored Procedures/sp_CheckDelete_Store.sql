Create  Procedure  [dbo].[sp_CheckDelete_Store](@s_ID nvarchar(50))  
as  
  Select count(*) as C from PR_ImportDetail where s_Store_ID=@s_ID   
         Union Select count(*) as C from PR_ImportDetailReturn where s_Store_ID=@s_ID   
         Union Select count(*) as C from PR_OrderConsignDetail where s_Store_ID=@s_ID   
         Union Select count(*) as C from PR_OrderDetailReturns where s_Store_ID=@s_ID   
         Union Select count(*) as C from PR_ImportConsignDetail where s_Store_ID=@s_ID   
         Union Select count(*) as C from PR_PurchaseImportDetails where s_Store_ID=@s_ID   
         Union Select count(*) as C from V_FullOrderDetails where s_Store_ID=@s_ID   
         Union Select count(*) as C from PR_PurchaseOrderDetails where s_Store_ID=@s_ID   
         Union Select count(*) as C from PR_TransDetails where s_StoreSource=@s_ID 
		 Union Select count(*) as C from PR_TransDetails where s_StoreDes=@s_ID
		 Union Select count(*) as C from Ls_Restaurant where Store_ID=@s_ID