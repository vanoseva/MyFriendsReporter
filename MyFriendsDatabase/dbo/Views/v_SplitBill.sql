CREATE View v_SplitBill
as            
Select ori.NumberID as OriginNumber,ls.*,e.s_Name as EmpName,t.Name as TableName,            
g.s_ID as GroupID,g.s_Name as GroupName,pr1.ProductID,pr1.Product_Name,pr1.Unit,pr1.Qty,pr1.Price,pr1.Discount,pr1.mDiscount,pr1.IDSort as Ordinal,          
pr1.PPV  ,pr1.PPV_Amount AS ServMoney,pr1.VAT as ThueVat ,pr1.VAT_Amount as TienThueVat,pr1.TTDB, pr1.TTDB_Amount as TienTTDB,pr1.SubTotal,pr1.SubTotalNoneDisNumber,          
pr1.f_DiscountNumber,pr1.m_DiscountNumber,pr1.isTax,pr1.OtherTax  ,pr1.OtherTax_Amount,isnull(p.isFood,0)as isFood,isnull(p.isDrink,0)as isDrink,pr1.EndPrice,pr1.Note as NoteDetail           
from Ls_SplitBill ls left outer join ls_Employees e on ls.Employee_ID=e.s_ID             
left outer join ls_Table t on ls.Table_ID=t.s_ID             
join Pr_SplitBillDetail pr1 on ls.s_ID=pr1.s_SplitBill_ID             
left join ls_products p on pr1.Product_ID=p.s_ID          
left join LS_ProductGroups g on p.s_ProductGroupID=g.s_ID
left outer join Ls_ResOrder ori  on ls.OriginOrderID=ori.s_ID