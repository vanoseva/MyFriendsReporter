Create  Procedure [dbo].[sp_getList_ByCreateDate_Quote](@CreateDate smalldatetime)
as
	SELECT * FROM LS_Quote WHERE  Datediff(day,dt_CreateDate,@CreateDate)=0