CREATE view [dbo].[rptTotalIncome]
as
	select 1 as link,n.s_Name as ObjectGroup,o.s_Name as ObjectName,kq.*  from rptNumber kq
	left join ls_Objects o on kq.[Object_ID]=o.s_ID
	join Ls_ObjectGroups n on o.s_ObjectGroup_ID=n.s_ID
