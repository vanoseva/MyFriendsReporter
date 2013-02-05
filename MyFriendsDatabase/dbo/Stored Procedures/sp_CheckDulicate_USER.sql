Create Procedure [dbo].[sp_CheckDulicate_USER](@IDSort numeric,@UID nvarchar(50)) 
as	
	if @IDSort<>0 
		Select * from LS_USER where s_UID=@UID and i_IDSort<>@IDSort
	else
		Select * from LS_USER where s_UID=@UID
