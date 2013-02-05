CREATE  Procedure  [dbo].[sp_CheckDulicate_Currency](@name nvarchar(50),@id nvarchar(50))
as
	if @id is not null
		Select count(*) as C from [LS_Currency] where s_name =@name and i_ID<>@id
	else
		Select count(*) as C from [LS_Currency] where s_name =@name 