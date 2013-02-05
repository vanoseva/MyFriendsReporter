Create View V_PricePartner
as
	SELECT     dbo.LS_PricePartner.i_ID, dbo.LS_PricePartner.dayMonth, dbo.LS_PricePartner.fromDate, dbo.LS_PricePartner.toDate, 
                      dbo.LS_PricePartner.Partner_ID, dbo.LS_PricePartner.Note AS Descr, dbo.PR_PricePartner.s_ID, dbo.PR_PricePartner.Roomtype_ID, 
                      dbo.PR_PricePartner.PriceVND, dbo.PR_PricePartner.PriceUSD, dbo.PR_PricePartner.nFreeRoom, dbo.PR_PricePartner.Ordinal, 
                      dbo.PR_PricePartner.Note, dbo.PR_PricePartner.Master_ID
	FROM         dbo.LS_PricePartner INNER JOIN
                      dbo.PR_PricePartner ON dbo.LS_PricePartner.s_ID = dbo.PR_PricePartner.Master_ID