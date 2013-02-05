CREATE Procedure sp_getInfoWorker(@dayMonth smalldatetime)          
as        
       
 Insert into PR_Workers(s_Employee_ID,s_Shift_ID,i_Year,i_Month)      
 Select s_ID,s_Shift_ID,Year(@dayMonth),Month(@dayMonth)   
from V_EmployeeShift v where v.b_isActive=1 and   
(Select count(*) from PR_Workers where s_Shift_ID=v.s_Shift_ID and s_Employee_ID=v.s_ID and   
i_Year=Year(@dayMonth) and Month(@dayMonth)=i_Month)=0      
 and Datediff(Month,isnull(v.dt_Holidays,Dateadd(d,1,@dayMonth)),@dayMonth)<=0    
    
 Select ls.s_Employee_ID as Employee_ID,ls.s_Name as Employee_Name,ls.s_Shift_Name,        
 ls.dt_fromTime,ls.dt_toTime,pr.* from V_EmployeeShift ls          
 left join PR_Workers pr On ls.s_ID=pr.s_Employee_ID and pr.s_Shift_ID=ls.s_Shift_ID         
 and Year(@dayMonth)=pr.i_Year and Month(@dayMonth)=pr.i_Month          
 where ls.b_isActive=1 and Datediff(Month,isnull(ls.dt_Holidays,Dateadd(d,1,@dayMonth)),@dayMonth)<=0         
 Order by ls.s_Name asc