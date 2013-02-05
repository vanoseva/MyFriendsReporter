CREATE Procedure [dbo].[sp_DanhSachMatHangConLaiPhaiTra]  (@ID nvarchar(50))           
as           
 Select ls.s_Product_ID as Product_IDchar, ls.s_Name as Product_Name,dt.s_ID,dt.s_Import_ID,  
 dt.s_product_ID,dt.m_Price,          
 dt.s_Store_ID, ISNULL(pu.s_Unit, dt.s_Unit) AS s_Unit,dt.f_convert,dt.f_Discount,          
 dt.s_Note ,dt.f_Quantity*(dt.m_Price-dt.m_Discount-dt.m_Price*dt.f_Discount/100) as m_Total ,           
 dt.m_Price as m_OriPrice ,((dt.f_Quantity)-isnull(t.QtyReturn/dt.f_convert,0)) as f_Quantity          
 from Pr_Importdetail dt inner join ls_Products ls on dt.s_Product_ID=ls.s_ID LEFT OUTER JOIN              
 dbo.PR_Product_Units  pu ON dt.s_Unit = pu.s_ID left join      
 (select ImportID,s_Product_ID,sum(f_Quantity*f_convert)as QtyReturn from PR_OrderDetailReturns       
 where ImportID=@ID group by ImportID,s_Product_ID)as t       
 on dt.s_Import_ID=t.ImportID and t.s_Product_ID=dt.s_Product_ID         
 where dt.s_Import_ID=@ID and ((dt.f_Quantity*dt.f_convert)-isnull(t.QtyReturn,0))>0