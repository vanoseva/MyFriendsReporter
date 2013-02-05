Create Procedure [dbo].[sp_ChangePWD_USER](@UID nvarchar(50),@PWD nvarchar(50)) 
as	
	Update LS_USER set s_PWD=@PWD where s_UID=@UID
