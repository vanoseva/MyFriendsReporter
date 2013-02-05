Create  Procedure  [dbo].[sp_CheckUpdate_CheckStore](@s_ID nvarchar(50),@Store_ID nvarchar(50),@dayMonth smalldatetime)
as
	Select count(*) as c from LS_CheckStore where [s_ID]<>@s_ID and s_Store_ID=@Store_ID and Datediff(day,dt_DayMonth,@DayMonth)=0 
