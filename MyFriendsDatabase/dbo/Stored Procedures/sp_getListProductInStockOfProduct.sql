CREATE proc [dbo].[sp_getListProductInStockOfProduct](@s_ID as nvarchar(50))  
as  
 --lay danh sach hang ton cua mat hang dang chon tren tat ca cac kho   
 select p.*,s.s_Name,ISNULL(pu.s_Unit, p.s_Unit) AS DVT  
  from pr_product_store p left outer join   
 ls_stores s on p.s_store_ID=s.s_ID left outer join   
  pr_product_units pu on p.s_Unit=pu.s_ID  
 where p.s_product_ID=@s_ID
	order by s.s_Name Asc