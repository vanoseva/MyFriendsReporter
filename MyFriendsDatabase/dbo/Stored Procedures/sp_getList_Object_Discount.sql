CREATE Procedure [dbo].[sp_getList_Object_Discount](@Object_ID nvarchar(50)) 
as	
	Select * from [V_ObjectDistcount] Order by dt_FromDate desc

