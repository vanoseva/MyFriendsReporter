Create  Procedure  [dbo].[sp_getList_Discount_forProduct]
as
	Select *  from [LS_Discount_Product] order by d_FromDate desc