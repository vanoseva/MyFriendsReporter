CREATE VIEW dbo.[SMDR-Nguoidung]  
AS  
SELECT     dbo.tmp_SMDR.*, dbo.LS_Nguoisudungdt.Tenphong, dbo.LS_Nguoisudungdt.Ten  
FROM         dbo.tmp_SMDR LEFT OUTER JOIN  
                      dbo.LS_Nguoisudungdt ON dbo.tmp_SMDR.Sonoibo = dbo.LS_Nguoisudungdt.Sonoibo 