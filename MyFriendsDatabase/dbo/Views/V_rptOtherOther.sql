CREATE view [dbo].[V_rptOtherOther]    
as    
 Select mas.s_ID,EmpAct=(Select s_Name From LS_Employees emp Where emp.s_ID=mas.s_EmployeeID)    
   ,ObjectID=obj.s_Object_ID    
   ,ObjectName=obj.s_Name    
   ,ObjectAddress=obj.s_Address    
   ,ObjectPhone1=obj.s_Phone1    
   ,mas.s_Note,mas.s_Order_ID,mas.dt_OrderDate,mas.s_Word,mas.m_OrderTotal    
   ,pro.s_Product_ID,del.f_Quantity,del.m_Price,del.f_Discount,del.f_VAT    
   ,unit.s_Unit,ful.InDebt,ful.OutDebt    
   ,ProductName=pro.s_Name,methodName=method.s_Name    
 From LS_Order_Other mas    
 inner join PR_OrderDetail_Other del on mas.s_ID=del.s_OrderID    
 left join PR_Product_Units unit on del.s_Unit=unit.s_ID    
 left join LS_Objects obj on mas.s_ObjectID=obj.s_ID    
 left join LS_Products pro on del.s_Product_ID=pro.s_ID    
 left join V_fullObjects ful on obj.s_Object_ID=ful.s_Object_ID  
 left join LS_PaymentOrder method on mas.i_ItemID=method.i_ID 