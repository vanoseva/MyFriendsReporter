CREATE View V_RegisterReal          
as          
 Select           
 ToDate=case when Datediff(day,to_Date,getdate())>0 and CheckOut_Date is null then          
  getdate()          
 else          
  to_Date          
 End          
 ,           
 ToDateSub1=case 
	when Datediff(day,from_Date,to_Date)=0 and  Datediff(day,from_Date,getdate())=0 and CheckOut_Date is null then          
		to_Date
	when Datediff(day,to_Date,getdate())>0 and CheckOut_Date is null then          
		dateadd(day,-1,getdate())          
	 else          
	  dateadd(day,-1,to_Date)        
 End          
 ,        
* from Pr_Register