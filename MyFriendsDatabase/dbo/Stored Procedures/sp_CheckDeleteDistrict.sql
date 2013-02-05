
CREATE Procedure  [dbo].[sp_CheckDeleteDistrict](@s_ID nvarchar(50))
as

	Select count(*) as C from [LS_Objects] where [s_District_ID]=@s_ID
	union all 
	Select count(*) as C from [LS_Contacts] where [s_DistrictID]=@s_ID


