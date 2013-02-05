CREATE VIEW dbo.V_Register            
AS            
SELECT     dbo.PR_Register.Group_ID, dbo.PR_Register.BK_ID, dbo.PR_Register.s_ID, dbo.PR_Register.Object_ID, dbo.PR_Register.Room_ID,             
                      r.Room_ID as PreRoomID,dbo.PR_Register.PreRoom_ID, dbo.PR_Register.From_date, dbo.PR_Register.To_date, dbo.PR_Register.CheckOut_Date, dbo.PR_Register.Price,             
                      dbo.PR_Register.Serv, dbo.PR_Register.Curr, dbo.PR_Register.Discount, dbo.PR_Register.Stat, dbo.PR_Register.Pers, dbo.PR_Register.Price_Extra,             
                      dbo.PR_Register.Vat, dbo.PR_Register.Payment, dbo.PR_Register.TravelPermit, dbo.PR_Register.Descr, dbo.PR_Register.CaLV,             
                      dbo.PR_Register.PreRegister_ID, dbo.PR_Register.IsRegDay, dbo.PR_Register.DisMoney, dbo.PR_Register.IDSort, dbo.PR_Register.ObjectType_ID,             
                      dbo.PR_Register.UCreate, dbo.PR_Register.dtCreate, dbo.PR_Register.UEdit, dbo.PR_Register.dtEdit, dbo.PR_Register.Note,             
                      dbo.PR_Register.b_Insert, dbo.LS_Objects.s_Name AS ObjectName, dbo.LS_Objects.s_Object_ID, dbo.Ls_RoomType.RoomType_ID,             
                      dbo.Ls_RoomType.s_Name AS Roomtype_Name, dbo.Ls_Room.Room_ID AS RoomID, dbo.PR_RegisterGroup.GroupName,           
  cast(ltrim(rtrim(str(year(dbo.PR_Register.From_date)))) + '-' + ltrim(rtrim(str(month(dbo.PR_Register.From_date)))) + '-' +           
  ltrim(rtrim(str(day(dbo.PR_Register.From_date)))) as smalldatetime) as ArrDate,             
  cast(ltrim(rtrim(str(year(dbo.PR_Register.To_date)))) + '-' + ltrim(rtrim(str(month(dbo.PR_Register.To_date)))) + '-' +           
  ltrim(rtrim(str(day(dbo.PR_Register.To_date)))) as smalldatetime) as DepDate, isnull(dbo.PR_Register.BKArrange_ID,'') as BKArrange_ID          
  ,dbo.PR_Register.CardID,dbo.PR_Register.CardSerial,dbo.PR_Register.Child,dbo.PR_Register.SegmID,dbo.PR_Register.LimitID,dbo.PR_Register.m_Balance    
  ,dbo.Ls_Room.Phone,dbo.Ls_Room.IsTELCKCO,LS_Nationalities.s_Nation_ID,LS_Nationalities.s_Name as Nation_Name,dbo.PR_Register.Partner_ID
 ,dbo.LS_Objects.Company,dbo.PR_Register.listObjReg         
FROM         dbo.Ls_Room INNER JOIN            
                      dbo.PR_Register ON dbo.Ls_Room.s_ID = dbo.PR_Register.Room_ID INNER JOIN            
                      dbo.Ls_RoomType ON dbo.Ls_Room.Roomtype_ID = dbo.Ls_RoomType.s_ID left outer join        
                      dbo.LS_Objects ON dbo.PR_Register.Object_ID = dbo.LS_Objects.s_ID LEFT OUTER JOIN    
       LS_Nationalities ON dbo.LS_Objects.Nation_ID=LS_Nationalities.s_ID LEFT OUTER JOIN  
                      dbo.PR_RegisterGroup ON dbo.PR_Register.Group_ID = dbo.PR_RegisterGroup.s_ID  
                      LEFT OUTER JOIN dbo.Ls_Room r on dbo.PR_Register.PreRoom_ID=r.s_ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[11] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "LS_Objects"
            Begin Extent = 
               Top = 15
               Left = 54
               Bottom = 154
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PR_Register"
            Begin Extent = 
               Top = 36
               Left = 283
               Bottom = 219
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_Room"
            Begin Extent = 
               Top = 119
               Left = 501
               Bottom = 299
               Right = 653
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ls_RoomType"
            Begin Extent = 
               Top = 170
               Left = 53
               Bottom = 305
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PR_RegisterGroup"
            Begin Extent = 
               Top = 42
               Left = 726
               Bottom = 230
               Right = 920
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Register';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Register';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_Register';

