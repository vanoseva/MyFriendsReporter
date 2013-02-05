CREATE  Procedure [dbo].[sp_getList_Case_Outcome](@caseTime int,@fromDate smalldatetime,@toDate smalldatetime)                  
as
--05.06.09them Ten nhan vien           
--22.06.09-Minh Tam
  if @caseTime=0  --tất cả  
		Select * From V_Outcome   order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc             
--   Select isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.* from LS_Outcome l      
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID     
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID    
-- order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                  
  else if @caseTime=1    --hôm nay    
       Select * From V_Outcome where DATEDIFF(day, dt_DayMonth, GETDATE())=0  
		order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc        
--   Select  isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.* from LS_Outcome l     
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID     
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID     
-- where DATEDIFF(day, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                  
else if @caseTime=2  --hôm qua 
	   Select * From V_Outcome where DATEDIFF(day, dt_DayMonth, GETDATE())=1
		order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc          
--   Select isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.*  from LS_Outcome l      
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID      
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID    
-- where DATEDIFF(day, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                  
else if @caseTime=3 --tuần này   
	Select * From V_Outcome where DATEDIFF(week, dt_DayMonth, GETDATE())=0
		order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc               
--   Select isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.* from LS_Outcome l      
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID      
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID    
-- where DATEDIFF(week, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                  
else if @caseTime=4 --tuần truớc  
	Select * From V_Outcome where DATEDIFF(week, dt_DayMonth, GETDATE())=1
		order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                 
--   Select isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.* from LS_Outcome l      
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID     
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID     
-- where DATEDIFF(week, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                  
else if @caseTime=5  --tháng này 
	Select * From V_Outcome where DATEDIFF(month, dt_DayMonth, GETDATE())=0
		order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                   
--   Select isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.* from LS_Outcome l      
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID      
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID    
-- where DATEDIFF(month, dt_DayMonth, GETDATE())=0 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                  
else if @caseTime=6  --tháng trứơc 
	Select * From V_Outcome where DATEDIFF(month, dt_DayMonth, GETDATE())=1
		order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                 
--   Select isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.* from LS_Outcome l     
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID      
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID    
-- where DATEDIFF(month, dt_DayMonth, GETDATE())=1 order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                  
else  --tùy chọn 
	Select * From V_Outcome where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0
		order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc                 
--   Select isnull(o.s_Name,e.s_Name)as Object,isnull(m.s_Name,N'Không có')as Method,l.*  from LS_Outcome l      
-- left outer join  LS_Objects o on l.s_Object_ID=o.s_ID     
-- left outer join  LS_OtherOutcome m on l.i_Item_ID=m.s_ID    
-- left outer join Ls_Employees e on l.s_Object_ID=e.s_ID      
-- where Datediff(day,dt_DayMonth,@fromDate)<=0 and Datediff(day,dt_DayMonth,@toDate)>=0                   
--     order by dt_DayMonth desc, substring(s_NumberID,0,len(s_NumberID)-6) desc