Create View [dbo].[V_Totol_Product_Store]
as
	Select s_Product_ID,sum(f_CurInstock) as f_CurInstock from [Pr_Product_Store]
	Group by s_Product_ID