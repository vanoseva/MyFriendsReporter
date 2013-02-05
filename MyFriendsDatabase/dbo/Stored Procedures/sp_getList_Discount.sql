Create  Procedure  [dbo].[sp_getList_Discount]
as
	Select *  from [LS_Discount] order by d_FromDate desc
