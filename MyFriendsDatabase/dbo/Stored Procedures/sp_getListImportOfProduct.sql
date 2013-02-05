CREATE proc [dbo].[sp_getListImportOfProduct](@s_ID as nvarchar(50))
as
	--danh sach nhap gan nhat theo mat hang 
	select top 10 l.s_import_ID,o.s_Name,l.dt_importDate,p.s_ID,p.s_Import_ID,p.s_product_ID,p.f_Quantity,p.m_Price,p.s_Store_ID,
			ISNULL(pu.s_Unit, p.s_Unit) AS s_Unit,p.f_Convert,p.i_IDSort,p.f_discount 
		from pr_importdetail p inner join 
		ls_imports l on p.s_import_ID=l.s_id left outer join 
		pr_product_units pu on p.s_Unit=pu.s_ID left outer join 
		ls_objects o on o.s_ID=l.s_Object_ID
	where p.s_product_ID=@s_ID
	order by l.dt_importDate desc