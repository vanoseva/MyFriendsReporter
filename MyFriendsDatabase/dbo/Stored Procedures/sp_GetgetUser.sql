Create Procedure  [dbo].[sp_GetgetUser](@UID nvarchar(50))
as

	Select * from Ls_User where s_UID=@UID and b_Valid=1