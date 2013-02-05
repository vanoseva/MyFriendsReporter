CREATE  Procedure [dbo].[sp_LoadListInstock_Product_Store](@Store_ID nvarchar(50))          
as          
 IF @Store_ID<>''          
  SELECT cast(0 as bit) AS isSelect,ls.s_ProductGroupID,ls.s_Product_ID, ls.s_ID,          
  ls.s_Name,ls.m_UnitPurchase,ls.m_UnitPrice,ls.f_taxVAT,@Store_ID AS s_Store_ID,
sum(pr.QImport*pr.ExChange - QOrder*pr.ExChange)AS f_CurInstock,
sum(pr.QImport*pr.ExChange - QOrder*pr.ExChange) AS f_QOrigin,          
  ls.f_MinInstock,ls.f_MaxInstock,ls.s_Unit FROM ls_Products ls ,V_Thekho pr          
  WHERE pr.Product_ID=ls.s_ID and pr.Store_ID=@Store_ID and (ls.b_IsMaterial=1 or ls.b_IsEndProduct=1) 
	GROUP BY ls.s_ProductGroupID,ls.s_Product_ID , ls.s_ID,ls.f_MinInstock,ls.f_MaxInstock,ls.s_Unit, ls.s_Name,ls.m_UnitPurchase,ls.m_UnitPrice,ls.f_taxVAT         
	ORDER BY ls.s_Name ASC
 ELSE          
  SELECT cast(0 as bit) AS isSelect,ls.s_ProductGroupID,ls.s_Product_ID, ls.s_ID,          
  ls.s_Name ,ls.m_UnitPurchase,ls.m_UnitPrice,ls.f_taxVAT,'' AS s_Store_ID,
sum(pr.QImport*pr.ExChange - QOrder*pr.ExChange)AS f_CurInstock,
sum(pr.QImport*pr.ExChange - QOrder*pr.ExChange) AS f_QOrigin,          
  ls.f_MinInstock,ls.f_MaxInstock,ls.s_Unit           
  FROM ls_Products ls,V_Thekho pr WHERE pr.Product_ID=ls.s_ID  and ls.b_Visible=1 and (ls.b_IsMaterial=1 or ls.b_IsEndProduct=1)       
  GROUP BY ls.s_ProductGroupID,ls.s_Product_ID , ls.s_ID,ls.f_MinInstock,ls.f_MaxInstock,ls.s_Unit, ls.s_Name,ls.m_UnitPurchase,ls.m_UnitPrice,ls.f_taxVAT         
  ORDER BY ls.s_Name ASC
          
 SELECT pr.* FROM PR_Product_Units pr WHERE pr.b_DefaultInstock=1        
 SELECT * FROM [Pr_Product_Store]        
 SELECT * FROM ls_stores