Create View [dbo].[V_Fix]
as
	Select dt.s_Store_ID,dt.s_Product_ID,
			f.[s_ID]
		  ,f.[s_OrdDetail_ID]
		  ,f.[s_Import_ID]
		  ,f.[Case_ID]
		  ,f.[f_Quantity]
		  ,f.[i_IDSort],'ORD' as MaNghiepvu
		from v_fullOrderdetail_fix f, v_fullOrderDetails dt
		where f.s_OrdDetail_ID=dt.s_ID
	union all
	Select  dt.s_Store_ID,dt.s_Product_ID,
			f.[s_ID]
		  ,f.[s_OrdDetail_ID]
		  ,f.[s_Import_ID]
		  ,f.[Case_ID]
		  ,f.[f_Quantity]
		  ,f.[i_IDSort],'ORDRe' as MaNghiepvu
		 from [PR_OrderDetailReturn_Fix] f,PR_OrderDetailReturns dt
