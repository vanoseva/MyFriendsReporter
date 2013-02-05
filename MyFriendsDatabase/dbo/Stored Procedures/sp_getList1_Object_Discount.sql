Create Procedure [dbo].[sp_getList1_Object_Discount](@Object_ID nvarchar(50)) 
as	
	Select * from [V_ObjectDistcount] where [s_Object_ID]=@Object_ID Order by s_Name asc

