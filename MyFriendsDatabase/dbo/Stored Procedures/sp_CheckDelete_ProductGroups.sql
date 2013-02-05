
CREATE  Procedure  [dbo].[sp_CheckDelete_ProductGroups](@ID nvarchar(50))
as
		 
         select count(*) as C from [LS_Products] where [s_ProductGroupID]=@ID
