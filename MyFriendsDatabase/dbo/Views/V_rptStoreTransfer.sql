--Luan chuyen kho  
CREATE view [dbo].[V_rptStoreTransfer]    
as    
 Select mas.s_ID,mas.s_NumberID,mas.dt_DayMonth,mas.s_Note  
  ,EmpActID=(Select emp.s_Employee_ID From Ls_Employees emp,LS_User u Where u.s_Employee_ID=emp.s_ID and mas.s_Creator=u.s_UID)  
  ,EmpAct=(Select emp.s_Name From Ls_Employees emp,LS_User u Where u.s_Employee_ID=emp.s_ID and mas.s_Creator=u.s_UID)  
  ,EmpSource=(Select s_Name From LS_Employees emp Where mas.s_EmpSource=emp.s_ID)  
  ,EmpDes=(Select s_Name From LS_Employees emp Where mas.s_EmpDes  =emp.s_ID)  
  ,StoreSource=(Select sto.s_Name From LS_Stores sto Where sto.S_ID=mas.s_StoreSource)  
  ,StoreDes=(Select sto.s_Name From LS_Stores sto Where sto.S_ID=mas.s_StoreDes)  
  ,pro.s_Product_ID,pro.s_Name,del.s_Unit,del.f_Quantity,del.m_Price    
 From LS_Trans mas    
 inner join PR_TransDetails del on mas.s_ID=del.s_NumberID    
 left join ls_products pro on del.s_product_ID=pro.s_ID