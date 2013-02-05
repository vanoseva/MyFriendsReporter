CREATE VIEW dbo.QSMDRnguoidungLienhe  
AS  
SELECT     dbo.LS_Danhba.Tentochuc, dbo.LS_Danhba.Diachi, dbo.[SMDR-Nguoidung].*, dbo.[SMDR-Nguoidung].Tenphong AS room_id  
FROM         dbo.[SMDR-Nguoidung] LEFT OUTER JOIN  
                      dbo.LS_Danhba ON dbo.[SMDR-Nguoidung].Sodanhba = dbo.LS_Danhba.Sodt  