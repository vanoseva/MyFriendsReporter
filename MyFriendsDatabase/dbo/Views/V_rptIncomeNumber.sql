--Thu cong no & thu khac  
CREATE view [dbo].[V_rptIncomeNumber]      
as      
 Select ls.s_ID,ls.s_NumberID,ls.dt_DayMonth,obj.s_Object_ID,s_Name=isnull(obj.s_Name,v.s_Payer),obj.s_Address,dis.s_Name as District  
 ,ls.s_PaymentReason      
   ,ls.m_Total,ls.s_Word,pT.m_Total as TienThu,pT.i_Currency,pT.m_Exchange,pT.s_Note as GhiChu     
 ,ls.i_Item_ID ,IncomeDescript=case when v.i_Item_ID is null then v.phuongthucCN else v.OtherIncomeName end--isnull(method.s_Name,ls.s_PaymentReason)  
 From ls_Income ls      
 Left join PR_NumberIncome pr on ls.s_ID=pr.s_IncomeID      
 left join ls_Objects obj on ls.s_Object_ID=obj.s_ID      
 left join ls_Districts dis on obj.s_District_ID=dis.s_ID    
 left join PR_IncomePaymentType pT on ls.s_ID=pT.s_Income_ID  
 --left join LS_OtherIncome  method on ls.i_Item_ID=method.i_ID  
 left join V_Income v on ls.s_NumberID=v.s_NumberID