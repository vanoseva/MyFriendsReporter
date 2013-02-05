CREATE Procedure  [dbo].[sp_GetListBanks]    
as
Select lsc.s_Name as curName, lsc.m_Exchange, ls.*,b.Instock from [LS_Banks] ls  
join  LS_Currency lsc  on ls.i_Currency=lsc.i_ID   
left join (Select BankID_Key,isnull(Sum(([331]-[131])),0) as Instock from V_Fund  
where isnull(BankID_Key,'')<>''  
Group by BankID_Key)as b on ls.s_ID=b.BankID_Key
Order by s_Name asc