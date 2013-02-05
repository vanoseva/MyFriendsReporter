CREATE View [V_Debt]
as
              
 Select Curr, s_ID as [ID], '' as Number_ID,Cast('1900-1-1' as smallDatetime) as DayMonth,[Object_ID],
  N'Công nợ đầu kỳ' as Description,cast(0 as int) as TypeDebt,Income as [331],Outcome as [131],cast(0 as int) as Ordinal,cast(0 as money) as Pay331,cast(0 as money) as Pay131
  from PR_BeginDebt where Income<>0 Or Outcome<>0
 Union all
 Select Curr,s_ID as [ID], Cast(IDSort as nvarchar(50)) as Number_ID,Inv_Date as DayMonth,[Object_ID]=case when isnull(isDebtCus,1)=1 then Object_ID else Partner_ID end,
  N'Nợ lễ tân' as Description,cast(1 as int) as TypeDebt,DebtUSD as [331],cast(0 as money) as [131],cast(1 as int) as Ordinal,cast(0 as money) as Pay331,cast(0 as money) as Pay131
  from PR_Invoices where Curr='USD' And DebtUSD<>0
 Union all
 Select Curr,s_ID as [ID], Cast(IDSort as nvarchar(50)) as Number_ID,Inv_Date as DayMonth,[Object_ID]=case when isnull(isDebtCus,1)=1 then Object_ID else Partner_ID end,
  N'Nợ lễ tân' as Description,cast(1 as int) as TypeDebt,DebtVND as [331],cast(0 as money) as [131],cast(1 as int) as Ordinal,cast(0 as money) as Pay331,cast(0 as money) as Pay131
  from PR_Invoices where Curr<>'USD' And DebtVND<>0 
 Union all              
 Select Isnull(CurrPay,Curr) as Curr,s_ID as [ID], NumberID as Number_ID,dayMonth as DayMonth,[ObjectID] as [Object_ID],
  N'Nợ nhà hàng' as Description,cast(2 as int) as TypeDebt,MDebt as [331],cast(0 as money) as [131],cast(2 as int) as Ordinal,cast(0 as money) as Pay331,cast(0 as money) as Pay131
  from Ls_ResOrder where MDebt<>0 

 Union all
 Select 'VND' as Curr,s_ID as [ID], s_NumberID as Number_ID,dt_dayMonth as DayMonth,s_Object_ID as [Object_ID],
  N'Thu công nợ' as Description,cast(3 as int) as TypeDebt,cast(0 as money) as [331],cast(0 as money) as [131],cast(3 as int) as Ordinal,PayVND as Pay331,cast(0 as money) as Pay131
  from ls_Income where i_PaymentReason=0 and i_PaymentDebt<>2 and VND<>0
 Union all              
 Select 'USD' as Curr,s_ID as [ID], s_NumberID as Number_ID,dt_dayMonth as DayMonth,s_Object_ID as [Object_ID],
  N'Thu công nợ' as Description,cast(3 as int) as TypeDebt,cast(0 as money) as [331],cast(0 as money) as [131],cast(3 as int) as Ordinal,PayUSD as Pay331,cast(0 as money) as Pay131
  from ls_Income where i_PaymentReason=0 and i_PaymentDebt<>2 and USD<>0
              
 Union all
             
 Select Curr,s_ID as [ID], s_Import_ID as Number_ID,dt_ImportDate as DayMonth,s_Object_ID as [Object_ID],
  N'Nhập hàng trả' as Description,cast(4 as int) as TypeDebt,cast(0 as money) as [331],cast(0 as money) as [131],cast(4 as int) as Ordinal,m_ImportTotal as Pay331,cast(0 as money) as Pay131
  from ls_ImportReturns
            
            
 Union all
 Select Curr,s_ID as [ID], s_Import_ID as Number_ID,dt_ImportDate as DayMonth,s_Object_ID as [Object_ID],
  N'Nhập hàng' as Description,cast(5 as int) as TypeDebt,cast(0 as money) as [331],m_ImportTotal as [131],cast(5 as int) as Ordinal,cast(0 as money) as Pay331,cast(0 as money) as Pay131
  from ls_Imports
               
 Union all
 Select 'VND' as Curr,s_ID as [ID], s_NumberID as Number_ID,dt_dayMonth as DayMonth,s_Object_ID as [Object_ID],              
  N'Chi công nợ' as Description,cast(6 as int) as TypeDebt,cast(0 as money) as [331],cast(0 as money) as [131],cast(6 as int) as Ordinal,cast(0 as money) as Pay331,PayVND as Pay131
  from ls_Outcome where  i_PaymentReason=0 and i_PaymentDebt<>2 and VND<>0
 Union all
  Select 'USD' as Curr,s_ID as [ID], s_NumberID as Number_ID,dt_dayMonth as DayMonth,s_Object_ID as [Object_ID],              
  N'Chi công nợ' as Description,cast(6 as int) as TypeDebt,cast(0 as money) as [331],cast(0 as money) as [131],cast(6 as int) as Ordinal,cast(0 as money) as Pay331,PayUSD as Pay131
  from ls_Outcome where  i_PaymentReason=0 and i_PaymentDebt<>2 and USD<>0
 Union all
 Select Curr,s_ID as [ID], s_Order_ID as Number_ID,dt_OrderDate as DayMonth,s_Object_ID as [Object_ID],
  N'Xuất hàng trả' as Description,cast(7 as int) as TypeDebt,cast(0 as money) as [331],cast(0 as money) as [131],cast(7 as int) as Ordinal,cast(0 as money) as Pay331,m_Ordertotal as Pay131
  from ls_OrderReturns