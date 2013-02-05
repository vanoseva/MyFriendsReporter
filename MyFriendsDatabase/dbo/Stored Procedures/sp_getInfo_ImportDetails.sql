CREATE   Procedure [dbo].[sp_getInfo_ImportDetails](@s_ID nvarchar(50))
as
	Select * from Pr_ImportDetail where s_Import_ID=@s_ID order by i_IDsort asc