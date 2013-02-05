
create  Procedure  [dbo].[sp_CheckDulicate_OtherIncome_2](@idkh nvarchar(50),@id nvarchar(50))
as
	if @id is not null
		Select count(*) as C from [LS_OtherIncome] where idkh =@idkh and i_id<>@id
	else
		Select count(*) as C from [LS_OtherIncome] where idkh =@idkh 