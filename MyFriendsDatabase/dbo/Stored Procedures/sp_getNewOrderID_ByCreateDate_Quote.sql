CREATE  Procedure [dbo].[sp_getNewOrderID_ByCreateDate_Quote](@CreateDate smalldatetime)  
as  
 SELECT PreOrderID=CASE WHEN CHARINDEX('-',s_Order_ID)>0 THEN CAST(SUBSTRING(s_Order_ID,1,CHARINDEX('-',s_Order_ID)-1) AS DECIMAL) ELSE 0 END   
 FROM LS_Quote WHERE Datediff(year,dt_CreateDate,@CreateDate)=0   
 AND CAST(SUBSTRING(s_Order_ID,0,CHARINDEX('-',s_Order_ID)) AS DECIMAL) >=   
    ALL(SELECT CAST(SUBSTRING(s_Order_ID,0,CHARINDEX('-',s_Order_ID)) AS DECIMAL)   
  FROM ls_quote WHERE dt_CreateDate = @CreateDate)