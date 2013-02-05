Create  Procedure [dbo].[sp_getListQuote_PurchaseOrder] (@dt_OrderDate smalldatetime)
as
	SELECT lso.s_Name as Object_Name, ls.* 
         FROM LS_Quote ls 
            LEFT OUTER JOIN LS_Objects lso ON ls.s_Object_ID=lso.s_ID
			WHERE ls.b_Valid=1 and DATEDIFF(minute,dt_CreateDate, @dt_OrderDate)>=0 
            and DATEDIFF(minute,dt_ValidDate,@dt_OrderDate)<=0
            and ls.s_ID NOT IN (SELECT DISTINCT s_Quote_ID FROM LS_PurchaseOrders 
                            WHERE ISNULL(s_Quote_ID,'')<>'')
         ORDER BY ls.dt_CreateDate, ls.i_IDSort