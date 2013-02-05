Create Procedure [dbo].[sp_getInfo_Object_Discount](@ID nvarchar(50)) 
as	
	Select * from V_ObjectDistcount where s_ID=@ID order by i_Ordinal desc

