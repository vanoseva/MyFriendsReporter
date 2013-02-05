CREATE view [dbo].[V_SearchImport]
as
	select * from V_SearchImport_DaCT
	union all 
	select * from V_SearchImport_ChuaCT