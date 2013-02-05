CREATE Procedure [dbo].[sp_GetlistProductOrder](@s_NumberID nvarchar(50),@s_Store_ID nvarchar(50))  
as  
 Declare @CheckInstock as bit  
 Select @CheckInstock=b_CheckInstock from tblconfig Order by i_ID asc  
 set @CheckInstock=isnull(@CheckInstock,1)  
 if @CheckInstock =1  
 Begin  
  if @s_NumberID=''  
   select pr.s_store_id, pr.f_curinstock, ls.*  
            from ls_products ls join pr_product_store pr on ls.s_id=pr.s_product_id                
            Where pr.s_store_id=@s_Store_ID and pr.f_curinstock>0  and ls.b_Visible=1  
            Order by ls.s_Name asc  
  else  
   select pr.s_store_id, (pr.f_curinstock + isnull(t.Qty,0)) as  f_curinstock, ls.*  
             from ls_products ls join pr_product_store pr on ls.s_id=pr.s_product_id     
               
             left join (Select s_Product_ID,sum(f_Convert*f_Quantity) as Qty from v_OrderDetail where s_OrderID=@s_NumberID Group by s_Product_ID) as t   
             On pr.s_Product_ID=t.s_Product_ID  
  
             Where pr.s_store_id=@s_Store_ID and (pr.f_curinstock + isnull(t.Qty,0))>0 and ls.b_Visible=1  
             Order by ls.s_Name asc  
 end  
 Else  
 Begin  
  if @s_NumberID=''  
   select @s_Store_ID as s_store_id, isnull(pr.f_curinstock,0) as f_curinstock, ls.*  
            from ls_products ls left join pr_product_store pr on ls.s_id=pr.s_product_id and pr.s_store_id=@s_Store_ID     
			where  ls.b_Visible=1  
            Order by ls.s_Name asc  
  else  
   select @s_Store_ID as s_store_id, (isnull(pr.f_curinstock,0) + isnull(t.Qty,0)) as  f_curinstock, ls.*  
             from ls_products ls Left join pr_product_store pr on ls.s_id=pr.s_product_id and pr.s_store_id=@s_Store_ID    
             left join (Select s_Product_ID,sum(f_Convert*f_Quantity) as Qty from v_OrderDetail where s_OrderID=@s_NumberID Group by s_Product_ID) as t   
             On pr.s_Product_ID=t.s_Product_ID 
   where  ls.b_Visible=1  
             Order by ls.s_Name asc  
 End