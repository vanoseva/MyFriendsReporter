Create  Procedure  [dbo].[sp_getInfo_Provinces](@s_ID nvarchar(50))
as
	Select * from [v_Provinces] where [s_ID]=@s_ID