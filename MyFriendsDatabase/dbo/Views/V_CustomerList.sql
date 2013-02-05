CREATE view [dbo].[V_CustomerList]
as
	Select s_Object_ID,kh.s_Name as ObjectName,s_Address,s_TaxNo,nhom.s_Name as GroupName
		,qh.s_Name as DistrictName,tinh.s_Name as ProvinceName
		,kh.s_ObjectGroup_ID
	From LS_Objects kh
	inner join LS_ObjectGroups nhom on nhom.s_ID=kh.s_ObjectGroup_ID
	left outer join Ls_Districts qh on qh.s_ID=kh.s_District_ID 	
	left outer join Ls_Provinces tinh on tinh.s_ID=qh.s_Province_ID
	Where kh.b_Customer=1
