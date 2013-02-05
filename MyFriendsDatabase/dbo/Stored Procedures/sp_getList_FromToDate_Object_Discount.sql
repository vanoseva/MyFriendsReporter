Create Procedure [dbo].[sp_getList_FromToDate_Object_Discount](@fromDate smalldatetime,@toDate smalldatetime) 
as	
	Select * from [V_ObjectDistcount] where          
         (Datediff(day,dt_FromDate,@fromDate)>=0 and Datediff(day,dt_ToDate,@fromDate)<=0)
         or (Datediff(day,dt_FromDate,@toDate)>=0 and Datediff(day,dt_ToDate,@toDate)<=0)
         or (Datediff(day,dt_FromDate,@fromDate)<=0 and Datediff(day,dt_ToDate,@toDate)>=0)
          Order by dt_FromDate desc

