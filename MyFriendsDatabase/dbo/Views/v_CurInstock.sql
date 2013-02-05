CREATE View [dbo].[v_CurInstock]  
as  
 Select Store_ID,Product_ID,Sum((QImport-QOrder)*Exchange) as QInstock from V_Thekho   
 Group by Store_ID,Product_ID