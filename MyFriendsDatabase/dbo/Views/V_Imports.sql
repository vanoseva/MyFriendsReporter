CREATE VIEW dbo.V_Imports
AS
SELECT i.s_ID, i.s_Import_ID, i.i_Item_ID, i.dt_ImportDate, i.s_Object_ID,
     i.s_EmployeeID, i.f_VAT, i.f_Discount, i.m_ImportTotal, i.s_Store_ID,
     i.s_Note, i.s_InfoProduct, i.s_SymbolInvoice, i.s_Invoice, i.s_Word,
     i.i_IDSort, i.m_Cost, i.m_Exchange, i.s_Name, i.s_Purchase_ID,
     i.dt_Create, i.dt_LastUpdate, i.s_UserCreate, i.s_UserEdit,
     e.s_Name AS EmpName, o.s_Name AS ObjName, t.s_Name AS PaymentTerm,
     i.s_Char, i.b_isCashPrepay, p.s_Order_ID, s.s_Name AS StoreName,
     i.b_isDept, o.s_Address, o.s_TaxNo, o.s_Phone1, i.m_Cash,
     i.b_isCash, i.m_Discount, s.s_Address AS Expr1,o.s_Object_ID as MaNCC,
      case when isnull(i.m_ImportTotal,0)>0 and isnull(i.m_ImportTotal,0)-isnull(Outc.m_Total,0)= 0 then N'YES'
     when isnull(i.m_ImportTotal,0)>0 and  isnull(i.m_ImportTotal,0)-isnull(Outc.m_Total,0) >0 and
     (isnull(i.m_ImportTotal,0)-isnull(Outc.m_Total,0))<isnull(i.m_ImportTotal,0)
      then N'YESNO' else N'NO' end isDebt,isnull(i.m_IncDebt,0)as m_IncDebt,isnull(i.m_OutDebt,0)as m_OutDebt,
      case when i.f_VAT=-1 then 0 else i.f_VAT end  as f_VAT1,isnull(i.Curr,'VND') as Curr
FROM Ls_Imports i LEFT OUTER JOIN        
     LS_PaymentTerm t ON i.PaymentTermID_s = t.s_ID LEFT OUTER JOIN
     LS_PurchaseImports p ON p.s_ID = i.s_Purchase_ID LEFT OUTER JOIN
     LS_Objects o ON i.s_Object_ID = o.s_ID LEFT OUTER JOIN
     LS_Employees e ON i.s_EmployeeID = e.s_ID LEFT OUTER JOIN
     LS_Stores  s ON i.s_Store_ID = s.s_ID LEFT OUTER JOIN
     (select s_NumberID,sum(m_Total)as m_Total from Pr_NumberOutcome group by s_NumberID)
    as Outc on i.s_ID=Outc.s_NumberID