
create  Procedure  [dbo].[sp_CheckDulicate_PaymentOrder_2](@idkh nvarchar(50),@id nvarchar(50))
as
	if @id is not null
		Select count(*) as C from [Ls_PaymentOrder] where idkh_s =@idkh and i_ID<>@id 
	else
		Select count(*) as C from [Ls_PaymentOrder] where  idkh_s =@idkh