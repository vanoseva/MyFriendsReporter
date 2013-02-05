CREATE  Procedure  [dbo].[sp_getList_Employees_Active](@dayMonth as smalldatetime)    
as  
--lay danh sach nhan vien chua nghi viec trong thang
 Select e.*,p.s_Name as Position from LS_Employees e left outer join   
 Ls_Position p on e.i_Position=p.i_ID 
 where e.b_isActive=1 and datediff(Month,isnull(dt_Holidays,dateadd(Year,1,getdate())),@dayMonth)<=0
Order by e.s_Name asc 
