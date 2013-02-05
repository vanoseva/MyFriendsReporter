CREATE View V_NumberOrder  
as  
Select dtUpdated,[NumberID] as sophieu,[s_ID], [NumberID], [dayMonth], [ObjectID], [ObjectName], [Address], [Company],
[ComAddress], [Phone], [Fax], [TaxCode], [VAT], [TaxTTDB], [TaxOther], [Serv], [PerDiscount], 
[MoneyDiscount], [Payment], [Register_ID], [Curr], [Exchange], [Table_ID], [Sub_TotalVND], 
[Sub_TotalUSD], [Sub_TotalTaxVND], [Sub_TotalTaxUSD], [Inwords], [Note], [IDSort], [Issue_ID], 
[Employee_ID], [VIP], [PerVIP], [Free], [SoHD], [SohieuHD], [TypeCard], [CardSerial], 
[Deposit_ID], [Deposit], [OrderID_Res], [NumPers], [dtCreate], [dtEdit], [UCreate], [UEdit], [Cashier_ID], [Shift_ID],
[ObjID_VAT],[ObjName_VAT],[RoomNo],[VAT_Amount],[TTDB_Amount],[PPV_Amount],[TaxOther_Amount],[Bank_ID],cast(0 as bit)as temp 
from ls_ResOrder  
union all  
Select [dayMonth] as dtUpdated,isnull(NumberIDOld,'') as sophieu,[s_ID], NumberID, [dayMonth], [ObjectID], [ObjectName], [Address], [Company],
[ComAddress], [Phone], [Fax], [TaxCode], [VAT], [TaxTTDB], [TaxOther], [Serv], [PerDiscount], 
[MoneyDiscount], [Payment], [Register_ID], [Curr], [Exchange], [Table_ID], [Sub_TotalVND], 
[Sub_TotalUSD], [Sub_TotalTaxVND], [Sub_TotalTaxUSD], [Inwords], [Note], [IDSort], [Issue_ID], 
[Employee_ID], [VIP], [PerVIP], [Free], [SoHD], [SohieuHD], [TypeCard], [CardSerial], 
[Deposit_ID], [Deposit], [OrderID_Res], [NumPers], [dtCreate], [dtEdit], [UCreate], [UEdit], [Cashier_ID], [Shift_ID],
[ObjID_VAT],[ObjName_VAT],[RoomNo],[VAT_Amount],[TTDB_Amount],[PPV_Amount],[TaxOther_Amount],[Bank_ID],cast(1 as bit)as temp 
from tmpResOrder