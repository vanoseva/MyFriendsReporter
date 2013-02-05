CREATE Procedure [dbo].[sp_getListImportDetail_Other](@ID nvarchar(50))          
as          
 select * from v_ImportDetail_Other where s_Import_ID=@ID order by i_IDsort 