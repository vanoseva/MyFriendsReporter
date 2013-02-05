Create Procedure  [dbo].[sp_GetListBranchProduct]
as

	Select * from [LS_BranchProduct] Order by s_Name asc