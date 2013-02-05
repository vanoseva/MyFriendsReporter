CREATE view [dbo].[V_ExchangeSysCur]
as
	select 1 as id,s.s_SysCur,c.m_Exchange from tblConfig s
	join LS_Currency c on s.s_SysCur=c.IDKH_s