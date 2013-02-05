CREATE   Procedure [dbo].[sp_Delete_Import_Other](@s_ID nvarchar(50))          
as          
 Update PR_Product_Store            
 set f_CurInstock=f_CurInstock - pro.f_Quantity          
 from ( Select s_Product_ID,s_Store_ID,isnull(sum(f_Quantity*f_Convert),0)  as f_Quantity from         
 PR_ImportDetail_Other where s_Import_ID=@s_ID   group by s_Product_ID,s_Store_ID) as pro        
 Where PR_Product_Store.s_Product_ID=pro.s_Product_ID           
  and PR_Product_Store.s_Store_ID=pro.s_Store_ID          
        
           
 Delete from PR_ImportDetail_Other where  s_Import_ID=@s_ID          
 Delete from Ls_Import_Other where  s_ID=@s_ID      
