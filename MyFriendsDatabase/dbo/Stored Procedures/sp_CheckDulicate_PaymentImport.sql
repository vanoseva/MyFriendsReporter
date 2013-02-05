CREATE  Procedure  [dbo].[sp_CheckDulicate_PaymentImport](@name nvarchar(50),@id nvarchar(50))
as
	if @id is not null
		Select count(*) as c from [Ls_PaymentImport] where s_name =@name and i_ID<>@id 
	else
		select count(*)as c from LS_PaymentImport where  s_name =@name 