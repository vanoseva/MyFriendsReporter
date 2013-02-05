CREATE View v_tmpResOrder    
as    
Select ls.*,e.s_Name as EmpName,t.Name as TableName,    
g.s_ID as GroupID,g.s_Name as GroupName,pr1.ProductID,pr1.Product_Name,pr1.Unit,pr1.Qty,pr1.Price,pr1.Discount,pr1.mDiscount,pr1.IDSort as Ordinal,  
pr1.PPV  ,pr1.PPV_Amount AS ServMoney,pr1.VAT as ThueVat ,pr1.VAT_Amount as TienThueVat,pr1.TTDB, pr1.TTDB_Amount as TienTTDB,pr1.SubTotal,pr1.SubTotalNoneDisNumber,  
pr1.f_DiscountNumber,pr1.m_DiscountNumber,pr1.isTax,pr1.OtherTax  ,pr1.OtherTax_Amount,isnull(p.isFood,0)as isFood,isnull(p.isDrink,0)as isDrink,pr1.EndPrice,pr1.Note as NoteDetail,pr1.b_isServices,pr1.s_ID as IDDetail
,isnull(p.b_SetMenu,0) as b_SetMenu
from tmpResOrder ls 
join tmpResOrderDetail pr1 on ls.s_ID=pr1.OrderID  
left join ls_Employees e on ls.Employee_ID=e.s_ID     
left join ls_Table t on ls.Table_ID=t.s_ID     

left join ls_products p on pr1.Product_ID=p.s_ID  
left join LS_ProductGroups g on p.s_ProductGroupID=g.s_ID     
Union all    
Select ls.*,e.s_Name as EmpName,t.Name as TableName,'-1' as GroupID,N'Phát sinh'as GroupName,    
pr1.s1 as ProductID,pr1.ProName as Product_Name,pr1.Unit,pr1.Qty,pr1.Price,pr1.Discount,pr1.mDiscount,pr1.Ordinal,  
pr1.PPV ,pr1.PPV_Amount AS ServMoney,pr1.VAT as ThueVat,pr1.VAT_Amount as TienThueVat,0 as TTDB, 0 as TienTTDB,pr1.SubTotal,pr1.SubTotalNoneDisNumber,  
pr1.f_DiscountNumber,pr1.m_DiscountNumber,cast(0 as bit)as isTax,0 as OtherTax  ,0 as OtherTax_Amount,cast(0 as bit)as isFood,cast(0 as bit)as isDrink,pr1.EndPrice,pr1.Note as NoteDetail,cast(0 as bit)as b_isServices,pr1.s_ID as IDDetail  
,cast(0 as bit) as b_SetMenu
from tmpResOrder ls 
join tmp_ResOrderDetail_Ext pr1 on ls.s_ID=pr1.OrderID
left join ls_Employees e on ls.Employee_ID=e.s_ID     
left join ls_Table t on ls.Table_ID=t.s_ID