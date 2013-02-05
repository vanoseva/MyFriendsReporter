CREATE  Procedure [dbo].[sp_DanhSachMatHangConLaiPhaiThu] (@s_ID nvarchar(50))          
as       
  select v.Product_IDchar, v.Product_Name,v.s_ID,v.s_OrderID,v.s_product_ID,v.m_Price,        
  v.s_Store_ID,ISNULL(pr.s_Unit, v.s_Unit) AS s_Unit,v.f_convert,v.f_Discount,v.s_Note ,v.m_Price as m_OriPrice ,        
  v.f_Quantity*(v.m_Price-v.m_Discount-v.m_Price*v.f_Discount/100) as m_Total ,         
  (v.f_Quantity-isnull(t.QtyReturn,0)/v.f_convert) as f_Quantity        
  from V_OrderDetail v left join   
   (select OrderID,s_Product_ID,sum(f_Quantity*f_convert)as QtyReturn       
    from PR_ImportDetailReturn where OrderID=@s_ID group by OrderID,s_Product_ID)as t       
    on v.s_OrderID=t.OrderID and t.s_Product_ID=v.s_Product_ID  
   Left join PR_Product_Units pr ON v.s_Unit = pr.s_ID 
      
   where s_OrderID=@s_ID and (v.f_Quantity-isnull(t.QtyReturn,0)/v.f_convert)>0
   order by v.i_ordinal