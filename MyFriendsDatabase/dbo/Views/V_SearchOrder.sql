CREATE view [dbo].[V_SearchOrder]
as
	select * from V_SearchOrder_DaTT
	union all 
	select * from V_SearchOrder_ChuaTT