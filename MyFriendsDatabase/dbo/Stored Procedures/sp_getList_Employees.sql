CREATE  Procedure  [dbo].[sp_getList_Employees]  
as  --28.05.09them ket voi bang Ls_Position
 Select e.*,p.s_Name as Position from LS_Employees e left outer join 
	Ls_Position p on e.i_Position=p.i_ID Order by e.s_Name asc 