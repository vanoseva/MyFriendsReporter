CREATE Procedure [dbo].[sp_GetIndexOrder](@dayMonth smalldatetime)
as
	Declare @s_Ind nvarchar(50)
	Select @s_Ind=s_Ind from tblIndexOrders where Datediff(day,dt_fromDate,@dayMonth)>=0
	and Datediff(day,dt_toDate,@dayMonth)<=0
	if  @s_Ind is null
	Begin
		exec sp_CreateOrders @dayMonth
		Select @s_Ind=s_Ind from tblIndexOrders where Datediff(day,dt_fromDate,@dayMonth)>=0
		and Datediff(day,dt_toDate,@dayMonth)<=0
	end
	Select @s_Ind as s_Ind